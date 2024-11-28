import 'dart:async';

import 'package:bwabat/features/main_layout/ui/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../../core/routing/routes.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> with WidgetsBindingObserver {
  final MobileScannerController controller = MobileScannerController(
    formats: [BarcodeFormat.all],
    detectionSpeed: DetectionSpeed.noDuplicates,
  );

  StreamSubscription<Object?>? _subscription;

  bool _isNavigating = false; // Prevent duplicate navigation

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!controller.value.hasCameraPermission) {
      return;
    }

    switch (state) {
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
      case AppLifecycleState.paused:
        unawaited(_subscription?.cancel());
        _subscription = null;
        unawaited(controller.stop());
        break;

      case AppLifecycleState.resumed:
        if (!_isNavigating) {
          _subscription = controller.barcodes.listen(_handleBarcode);
          unawaited(controller.start());
        }
        break;

      case AppLifecycleState.inactive:
        unawaited(_subscription?.cancel());
        _subscription = null;
        unawaited(controller.stop());
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _subscription = controller.barcodes.listen(_handleBarcode);
    unawaited(controller.start());
  }

  @override
  Future<void> dispose() async {
    WidgetsBinding.instance.removeObserver(this);
    unawaited(_subscription?.cancel());
    _subscription = null;
    super.dispose();
    await controller
        .dispose(); // Dispose the controller when the widget is disposed
  }

  /// Handle scanned barcode
  void _handleBarcode(BarcodeCapture barcodeCapture) {
    if (!mounted || _isNavigating) return;

    final List<Barcode> barcodes = barcodeCapture.barcodes;
    if (barcodes.isNotEmpty) {
      final String? value = barcodes.first.rawValue;

      if (value != null) {
        debugPrint('Scanned Barcode: $value');
        setState(() {
          _isNavigating = true; // Prevent further scans
        });

        PersistentNavBarNavigator.pushNewScreenWithRouteSettings(
          context,
          settings: const RouteSettings(name: Routes.homeScreen),
          screen: const HomeScreen(),
          withNavBar: true,
          pageTransitionAnimation: PageTransitionAnimation.scale,
        ).then((_) {
          // Reset the navigation state when returning to this screen
          setState(() {
            _isNavigating = false;
          });
        });

        unawaited(_subscription?.cancel()); // Stop listening for barcodes
        _subscription = null;
        unawaited(controller.stop()); // Stop the scanner during navigation
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MobileScanner(
      controller: controller,
      onDetect: (BarcodeCapture capture) {
        _handleBarcode(capture);
      },
    );
  }
}
