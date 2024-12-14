import 'package:bwabat/features/scan/logic/scan_cubit.dart';
import 'package:bwabat/features/scan/ui/widgets/scan_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> with WidgetsBindingObserver {
  // final ScanCubit _scanCubit = getIt<ScanCubit>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   scanCubit.startScanning(); // Replace with your logic
    // });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    context.read<ScanCubit>().handleAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScanBlocListener(
        child: MobileScanner(
          controller: context.read<ScanCubit>().controller,
          onDetect: (BarcodeCapture capture) {},
        ),
      ),
    );
  }
}
