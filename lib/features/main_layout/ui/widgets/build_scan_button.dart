import 'package:bwabat/core/di/dependency_injection.dart';
import 'package:bwabat/core/resources/app_assets.dart';
import 'package:bwabat/features/scan/logic/scan_cubit.dart';
import 'package:bwabat/features/scan/ui/screen/scan_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_button.dart';

class BuildScanButton extends StatelessWidget {
  const BuildScanButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton.withIcon(
      iconPath: Assets.svgsQrCodeIconButton,
      textColor: Colors.white,
      fontSize: 18,
      backgroundColor: const Color.fromARGB(255, 25, 75, 136),
      padding: const EdgeInsets.symmetric(vertical: 13),
      text: 'Scan Now',
      onPressed: () async {
        await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) =>
                  getIt<ScanCubit>()..startScanning(),
              child: const ScanScreen(),
            ),
          ),
        );
      },
    );
  }
}
