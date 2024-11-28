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
    formats: [BarcodeFormat.all], // You can specify formats to scan
    detectionSpeed: DetectionSpeed.noDuplicates, // Avoid duplicate results
  );

  StreamSubscription<Object?>? _subscription;

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
        _subscription = controller.barcodes.listen(_handleBarcode);
        unawaited(controller.start());
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
    await controller.dispose();
  }

  /// Handle scanned barcode
  void _handleBarcode(BarcodeCapture barcodeCapture) {
    if (!mounted) return;

    // Get the first barcode detected
    final List<Barcode> barcodes = barcodeCapture.barcodes;
    if (barcodes.isNotEmpty) {
      final String? value = barcodes.first.rawValue;

      if (value != null) {
        debugPrint('Scanned Barcode: $value');
        // Perform any action based on the scanned barcode
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Scanned: $value')),
        );
        unawaited(_subscription?.cancel());
        _subscription = null;
        super.dispose();
        controller.dispose();
        PersistentNavBarNavigator.pushNewScreenWithRouteSettings(
          context,
          settings: const RouteSettings(name: Routes.homeScreen),
          screen: const HomeScreen(),
          withNavBar: true,
          pageTransitionAnimation: PageTransitionAnimation.scale,
        );
        // Optionally, stop scanning after successful detection
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
