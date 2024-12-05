import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bwabat/core/helpers/encryption_manager.dart';
import 'package:bwabat/core/helpers/shared_pref_helper.dart';
import 'package:bwabat/core/networking/api_error_model.dart';
import 'package:bwabat/features/login/data/models/converted_keys.dart';
import 'package:bwabat/features/main_layout/data/models/scan_qr_request_body.dart';
import 'package:bwabat/features/main_layout/data/models/ticket_model.dart';
import 'package:bwabat/features/main_layout/data/repos/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

part 'scan_cubit.freezed.dart';
part 'scan_state.dart';

class ScanCubit extends Cubit<ScanState> {
  final HomeRepo _homeRepo;
  late final bool isOnline;
  // late MobileScannerController controller;

  // StreamSubscription<Object?>? _subscription;
  ScanCubit(this._homeRepo) : super(const ScanState.initial());

  final MobileScannerController controller = MobileScannerController(
    formats: [BarcodeFormat.all],
    detectionSpeed: DetectionSpeed.noDuplicates,
  );

  StreamSubscription? barcodeSubscription;
  bool _isNavigating = false;

  /// Start scanning for barcodes
  Future<void> startScanning() async {
    if (_isNavigating) return; // Prevent scanning during navigation
    var convertedKeys = await SharedPrefHelper.retrieveConvertedKeysSecurely();
    isOnline = convertedKeys?.encryprionkey == null;
    emit(const ScanScanningState());
    barcodeSubscription = controller.barcodes.listen((barcodeCapture) async {
      await _handleBarcode(barcodeCapture);
    });
    await controller.start();
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
      case AppLifecycleState.hidden:
      case AppLifecycleState.paused:
        await stopScanning();
        break;

      case AppLifecycleState.resumed:
        if (!_isNavigating) await startScanning();
        break;

      case AppLifecycleState.inactive:
        await stopScanning();
        break;
    }
  }

  /// Process the barcode
  Future<void> _handleBarcode(BarcodeCapture barcodeCapture) async {
    if (_isNavigating) return; // Prevent duplicate navigation

    try {
      final barcodes = barcodeCapture.barcodes;
      if (barcodes.isEmpty || barcodes.first.rawValue == null) return;

      final String rawValue = barcodes.first.rawValue!;
      emit(ScanProcessingState(barcodeData: rawValue));

      final Ticket? ticket = isOnline == true
          ? await _processBarcodeOnline(rawValue)
          : await _processBarcodeOffline(rawValue);
      if (ticket == null) {
        emit(ScanErrorState(
            ApiErrorModel(error: ErrorData(message: "Invalid QR Code"))));
        return;
      }

      // Prevent further navigation until the process completes
      _isNavigating = true;
      dispose();
      emit(ScanNavigationState(ticket: ticket));
    } catch (error) {
      emit(ScanErrorState(ApiErrorModel(
          error: ErrorData(message: "Error processing barcode: $error"))));
    }
  }

  Future<Ticket?> _processBarcodeOnline(String qrCode) async {
    final response =
        await _homeRepo.scanQrCode(ScanQrRequestBody(qrCode: qrCode));

    response.when(success: (ticket) async {
      return ticket;
    }, failure: (error) {
      emit(ScanErrorState(error));
    });
    return null;
  }

  Future<Ticket?> _processBarcodeOffline(String rawValue) async {
    final ConvertedKeys? convertedKeys =
        await SharedPrefHelper.retrieveConvertedKeysSecurely();

    final String? decryptedData = EncryptionManager.decryptData(
      rawValue,
      convertedKeys ?? ConvertedKeys(encryprionkey: null, iv: null),
    );

    if (decryptedData == null) return null;
    return Ticket.fromJson(jsonDecode(decryptedData));
  }

  /// Mark navigation as completed
  void completeNavigation() {
    _isNavigating = false;
  }

  Future<void> dispose() async {
    await stopScanning();
    await controller.dispose();
  }

  /// Handle scanned barcode
}
