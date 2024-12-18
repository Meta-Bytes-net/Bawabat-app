import 'package:bwabat/core/resources/app_assets.dart';
import 'package:bwabat/features/main_layout/ui/widgets/build_scan_button.dart';
import 'package:bwabat/features/main_layout/ui/widgets/build_switcher.dart';
import 'package:bwabat/features/main_layout/ui/widgets/offline_records_bloc_builder.dart';
import 'package:bwabat/features/scan/ui/screen/scan_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/resources/sizes.dart';
import '../../../../core/theming/text_styles.dart';




class DefaultHome extends StatefulWidget {
  const DefaultHome({super.key});

  @override
  State<DefaultHome> createState() => _DefaultHomeState();
}


class _DefaultHomeState extends State<DefaultHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          right: 60.w,
          left: 60.w,
          top: MediaQuery.sizeOf(context).height * 0.04,
          bottom: MediaQuery.sizeOf(context).height * 0.07,

        ),
        child: Column(
          children: [
                  Container(
            alignment: Alignment.topCenter,
            padding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
            child: SvgPicture.asset(
              height: 27.h,
              Assets.svgsBawabatLogo,
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            )
                .animate()
                .slide(duration: const Duration(seconds: 1))
                .fadeIn(
                  duration: const Duration(seconds: 1),
                )
                .scale(duration: const Duration(seconds: 1)),
          ),
            gapH12,
            Text(
              'Ticket Scanner',
              style: TextStyles.font20WhiteSemiBold,
            ),
            gapH12,
            const BuildSwitcher(),
            gapH16,
            Text(
              'Scan the QR code of the device',
              textAlign: TextAlign.center,
              style: TextStyles.font14WhiteSemiBold.copyWith(fontSize: 16.sp),
            ),
            gapH16,
            SvgPicture.asset(Assets.svgsQrCode,height: MediaQuery.sizeOf(context).height*0.18.h, ),
            const BuildOfflineRecordsStatus(),
            gapH16,
            const BuildScanButton(),
            gapH64,
          ],
        ),

    
    ));
  }

  void scanOnPressed(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const ScanScreen(),
      ),
    );
  }
}
