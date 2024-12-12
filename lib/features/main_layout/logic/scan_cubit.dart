import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bwabat/core/helpers/constants.dart';
import 'package:bwabat/core/helpers/encryption_manager.dart';
import 'package:bwabat/core/helpers/shared_pref_helper.dart';
import 'package:bwabat/core/networking/api_error_model.dart';
import 'package:bwabat/features/login/data/models/converted_keys.dart';
import 'package:bwabat/features/main_layout/data/models/scan_qr_request_body.dart';
import 'package:bwabat/features/main_layout/data/models/ticket_model.dart';
import 'package:bwabat/features/main_layout/data/repos/home_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

part 'scan_cubit.freezed.dart';
part 'scan_state.dart';

class ScanCubit extends Cubit<ScanState> {
  final HomeRepo _homeRepo;
  // late final bool isOnline;
  // late MobileScannerController controller;

  // StreamSubscription<Object?>? _subscription;
  ScanCubit(this._homeRepo) : super(const ScanState.initial());

  final MobileScannerController controller = MobileScannerController(
    formats: [BarcodeFormat.all],
    detectionSpeed: DetectionSpeed.noDuplicates,
  );

  StreamSubscription? barcodeSubscription;
  bool isNavigating = false;

  /// Start scanning for barcodes
  Future<void> startScanning() async {
    if (isNavigating) return; // Prevent scanning during navigation
    await controller.start();

    emit(const ScanScanningState());
    barcodeSubscription = controller.barcodes.listen((barcodeCapture) async {
      await handleBarcode(barcodeCapture);
    });
  }

  /// Stop scanning for barcodes
  Future<void> stopScanning() async {
    await barcodeSubscription?.cancel();
    await controller.stop();
    barcodeSubscription = null;
  }

  /// Handle lifecycle state changes
  Future<void> handleAppLifecycleState(AppLifecycleState state) async {
    if (!controller.value.hasCameraPermission) return;
    switch (state) {
      case AppLifecycleState.detached:
        debugPrint("detached");
      case AppLifecycleState.hidden:
        debugPrint("hidden");
      case AppLifecycleState.paused:
        debugPrint("paused");
        await stopScanning();
        break;

      case AppLifecycleState.resumed:
        debugPrint("resumed");
        await startScanning();
        break;

      case AppLifecycleState.inactive:
        debugPrint("inactive");
        await stopScanning();
        break;
    }
  }

  /// Process the barcode
  Ticket? ticket;
  Future<void> handleBarcode(BarcodeCapture barcodeCapture) async {
    if (isNavigating) {
      debugPrint("Navigation already in progress, skipping barcode handling.");
      return;
    }

    try {
      final barcodes = barcodeCapture.barcodes;
      if (barcodes.isEmpty || barcodes.first.rawValue == null) return;

      final String rawValue = barcodes.first.rawValue!;
      emit(ScanProcessingState(barcodeData: rawValue));

      isNavigating = true; // Prevent further processing
      var isOnline = await SharedPrefHelper.getBool(SharedPrefKeys.isOnline);
      debugPrint("isOnline: $isOnline");

      if (isOnline) {
        await _processBarcodeOnline(rawValue);
      } else {
        await _processBarcodeOffline(rawValue);
      }

      emit(ScanNavigationState(ticket: ticket));
      dispose();
    } catch (error) {
      emit(ScanErrorState(ApiErrorModel(
        error: ErrorData(message: "Error processing barcode: $error"),
      )));
    } finally {
      // Do not reset `_isNavigating` here to ensure it blocks further scans
      // until navigation is explicitly completed in the UI layer.
    }
  }

  Future<void> _processBarcodeOnline(String qrCode) async {
    emit(const ScanOnlineLoadingState());
    final response =
        await _homeRepo.scanQrCode(ScanQrRequestBody(qrCode: qrCode));

    response.when(success: (onlineTicket) {
      if (kDebugMode) {
        print(
            "inSuccess Ticket ID: ${ticket?.msg} Ticket Number: ${ticket?.ticketNumber} Ticket Type: ${ticket?.ticketType} Ticket Status: ${ticket?.userName}    ");
      }

      ticket = onlineTicket;

      // print every attribute in th ticket
    }, failure: (error) {
      emit(ScanErrorState(error));
    });
    return;
  }

  Future<void> _processBarcodeOffline(String rawValue) async {
    final ConvertedKeys? convertedKeys =
        await SharedPrefHelper.retrieveConvertedKeysSecurely();

    final String? decryptedData = EncryptionManager.decryptData(
      rawValue,
      ConvertedKeys(
          encryprionkey: convertedKeys?.encryprionkey, iv: convertedKeys?.iv),
    );
    if (kDebugMode) {
      print("decryptedData: ${convertedKeys?.encryprionkey ?? ""}");
      print("decryptedData: ${convertedKeys?.iv ?? ""}");
      print("decryptedData: $decryptedData");
    }

    if (decryptedData == null) return;
    ticket = Ticket.fromJson(jsonDecode(decryptedData));

    debugPrint(
        " inOffline Ticket ID: ${ticket?.msg} Ticket Number: ${ticket?.ticketNumber} Ticket Type: ${ticket?.ticketType} Ticket Status: ${ticket?.userName}");
    // emit(ScanNavigationState(ticket: ticket));
    return;
  }

  /// Mark navigation as completed
  void completeNavigation() {
    isNavigating = false;
  }

  Future<void> dispose() async {
    await stopScanning();
    await controller.dispose();
  }

  /// Handle scanned barcode
}
