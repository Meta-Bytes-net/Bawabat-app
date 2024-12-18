import 'package:bwabat/features/main_layout/logic/cubit/home_cubit.dart';
import 'package:bwabat/features/scan/logic/scan_cubit.dart';
import 'package:bwabat/features/scan/ui/widgets/scan_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ScanCubit, ScanState>(
      listener: (context, state) {
        state.whenOrNull(
          scanNavigationState: (ticket) {
      
          },
          scanErrorState: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error.error?.message ?? 'An error occurred'),
                backgroundColor: Colors.red,
              ),
            );
          },
        );
      },
      child: Scaffold(
        body: ScanBlocListener(
          child: MobileScanner(
            controller: context.read<ScanCubit>().controller,
            onDetect: (BarcodeCapture capture) {},
          ),
        ),
      ),
    );
  }
}
