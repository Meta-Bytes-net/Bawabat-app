import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:bwabat/core/di/dependency_injection.dart';
import 'package:bwabat/core/helpers/shared_pref_helper.dart';
import 'package:bwabat/core/resources/app_assets.dart';
import 'package:bwabat/features/login/data/models/converted_keys.dart';
import 'package:bwabat/features/main_layout/logic/cubit/home_cubit.dart';
import 'package:bwabat/features/scan/logic/scan_cubit.dart';
import 'package:bwabat/features/scan/ui/screen/scan_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/resources/sizes.dart';
import '../../../../core/theming/text_styles.dart';
import '../../../../core/widgets/custom_button.dart';

class DefaultHome extends StatefulWidget {
  const DefaultHome({super.key});

  @override
  State<DefaultHome> createState() => _DefaultHomeState();
}

class _DefaultHomeState extends State<DefaultHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 30,
        left: 55.w,
        top: 40.h,
      ),
      child: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                    child: SvgPicture.asset(
                      height: 45.h,
                      width: 45.h,
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
                    style: TextStyles.font25WhiteMedium,
                  ),
                  gapH16,
                  SvgPicture.asset(Assets.svgsQrCode),
                  gapH16,
                  Text(
                    'The QR code will be automatically detected when you position it between the guide lines',
                    textAlign: TextAlign.center,
                    style: TextStyles.font14WhiteSemiBold,
                  ),
                  gapH16,
                  CustomButton.withIcon(
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
                  ),
                ],
              ),
            ),
            IconButton(
                onPressed: () => getIt<HomeCubit>().signOut(),
                icon: const Icon(
                  Icons.exit_to_app_rounded,
                  color: Colors.red,
                  size: 30,
                )),
          ],
        ),
      ),
    );
  }

  void scanOnPressed(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const ScanScreen(),
      ),
    );
  }
}

class BuildSwitcher extends StatefulWidget {
  const BuildSwitcher({super.key});

  @override
  State<BuildSwitcher> createState() => _BuildSwitcherState();
}

class _BuildSwitcherState extends State<BuildSwitcher> {
  bool _isToggled = false;
  ConvertedKeys? convertedKeys;
  getBoolIsOnlineFromCache() async {
    _isToggled = await SharedPrefHelper.getBool(SharedPrefKeys.isOnline);
    debugPrint("getBoolIsOnlineFromCache   $_isToggled");
  }

  getKeysFromCache() async {
    convertedKeys = await SharedPrefHelper.retrieveConvertedKeysSecurely();
    debugPrint("getKeysFromCache   ${convertedKeys?.encryprionkey}");
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    getBoolIsOnlineFromCache();
    getKeysFromCache();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.0.w, vertical: 4.0.h),
      margin: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.0.h),
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: const Color(0xFF1C61C6), width: 2),
      ),
      child: AnimatedToggleSwitch<bool>.size(
        current: _isToggled,
        values: const [false, true],
        borderWidth: 0,
        height: 45.h,
        style: ToggleStyle(
          indicatorColor: const Color(0xFF1C61C6),
          backgroundColor: Colors.transparent,
          indicatorBorder: Border.all(color: Colors.transparent),
        ),
        onChanged: convertedKeys?.encryprionkey != ''
            ? (value) async {
                // bool isOnline =
                //     await SharedPrefHelper.getBool(SharedPrefKeys.isOnline);

                if (convertedKeys?.encryprionkey != '') {
                  setState(() {
                    _isToggled = value;
                    SharedPrefHelper.setData(SharedPrefKeys.isOnline, value);
                  });
                }
              }
            : null,
        indicatorSize: Size.fromWidth(
          130.0.w,
        ),
        iconBuilder: (value) {
          if (value == true) {
            // When online
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Online',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(width: 8),
                SvgPicture.asset(Assets.svgsOnlineIcon),

                // Icon(
                //   Icons.wifi_rounded,
                //   color: Colors.white,
                //   size: 16.sp,
                // ),
              ],
            );
          } else {
            // When offline
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Offline',
                  style: TextStyles.font14WhiteSemiBold,
                ),
                const SizedBox(width: 8),
                SvgPicture.asset(Assets.svgsOfflineIcon),
                // Icon(
                //   Icons.wifi_off_rounded,
                //   color: Colors.white,
                //   size: 16.sp,
                // ),
              ],
            );
          }
        },
      ),
    );
  }
}
