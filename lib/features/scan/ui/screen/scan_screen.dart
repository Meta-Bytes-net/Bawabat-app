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
  late ScanCubit _scanCubit;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _scanCubit = context.read<ScanCubit>();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _scanCubit.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    _scanCubit.startScanning();

    super.didChangeDependencies();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _scanCubit.handleAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    return ScanBlocListener(
      child: MobileScanner(
        controller: _scanCubit.controller,
        onDetect: (BarcodeCapture capture) {},
      ),
    );
  }
}
