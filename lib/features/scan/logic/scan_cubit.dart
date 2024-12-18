import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bwabat/core/di/dependency_injection.dart';
import 'package:bwabat/core/helpers/constants.dart';
import 'package:bwabat/core/helpers/encryption_manager.dart';
import 'package:bwabat/core/helpers/shared_pref_helper.dart';
import 'package:bwabat/core/networking/api_error_model.dart';
import 'package:bwabat/features/login/data/models/converted_keys.dart';
import 'package:bwabat/features/main_layout/logic/cubit/home_cubit.dart';
import 'package:bwabat/features/scan/data/models/scan_qr_request_body.dart';
import 'package:bwabat/features/scan/data/models/ticket_model.dart';
import 'package:bwabat/features/scan/data/repos/scan_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

part 'scan_cubit.freezed.dart';
part 'scan_state.dart';

class ScanCubit extends Cubit<ScanState> {
  final ScanRepo _scanRepo;
  // late final bool isOnline;
  // late MobileScannerController controller;

  // StreamSubscription<Object?>? _subscription;
  ScanCubit(this._scanRepo) : super(const ScanState.initial());

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
        await _scanRepo.scanQrCode(ScanQrRequestBody(qrCode: qrCode));

    response.when(
      success: (onlineTicket) async {
        if (kDebugMode) {
          print("Online ticket processed: ${onlineTicket?.ticketNumber}");
        }
        if (onlineTicket != null) {
          onlineTicket.scanTime = DateTime.now().toIso8601String();
          ticket = onlineTicket;
        }
      },
      failure: (error) {
        emit(ScanErrorState(error));
      }
    );
  }

  Future<void> _processBarcodeOffline(String rawValue) async {
    try {
      final ConvertedKeys? convertedKeys =
          await SharedPrefHelper.retrieveConvertedKeysSecurely();
      final String? decryptedData = EncryptionManager.decryptData(
        rawValue,
        ConvertedKeys(
          encryprionkey: convertedKeys?.encryprionkey,
          iv: convertedKeys?.iv,
        ),
      );

      if (decryptedData != null) {
        if (kDebugMode) {
          print("Offline ticket data: $decryptedData");
        }

        // Create offline ticket
        final Map<String, dynamic> ticketData = json.decode(decryptedData);
        final newTicket = Ticket.fromJson(ticketData);
        newTicket.scanTime = DateTime.now().toIso8601String();
        ticket = newTicket;

        // Cache the ticket using HomeCubit
        if (ticket != null) {
          await _cacheTicketInHomeCubit(ticket!);
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error processing offline ticket: $e");
      }
      rethrow;
    }
  }

  Future<void> _cacheTicketInHomeCubit(Ticket ticket) async {
    try {
      final homeCubit = getIt<HomeCubit>();
      await homeCubit.handleTicketScan(ticket);
    } catch (e) {
      if (kDebugMode) {
        print("Error caching ticket: $e");
      }
      rethrow;
    }
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
