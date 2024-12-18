import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:bwabat/core/helpers/shared_pref_helper.dart';
import 'package:bwabat/core/resources/app_assets.dart';
import 'package:bwabat/features/login/data/models/converted_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/theming/text_styles.dart';

class BuildSwitcher extends StatefulWidget {
  const BuildSwitcher({super.key});

  @override
  State<BuildSwitcher> createState() => _BuildSwitcherState();
}
class _BuildSwitcherState extends State<BuildSwitcher> {
  bool _isToggled = false;
  ConvertedKeys? convertedKeys;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.0.w, vertical: 4.0.h),
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
        height: 30.h,
        style: ToggleStyle(
          indicatorColor: const Color(0xFF1C61C6),
          backgroundColor: Colors.transparent,
          indicatorBorder: Border.all(color: Colors.transparent),
        ),
        onChanged: convertedKeys?.encryprionkey != ''
            ? (value) async {


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
                 Text(
                  'Online',
                  style: TextStyles.font12witeRegular,
                ),
                const SizedBox(width: 8),
                SvgPicture.asset(Assets.svgsOnlineIcon,height: 10,),
              ],
            );
          } else {
            // When offline
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Offline',
                  style: TextStyles.font12witeRegular,
                ),
                const SizedBox(width: 8),
                SvgPicture.asset(Assets.svgsOfflineIcon,height: 10,),
              
              ],
            );
          }
        },
      ),
    );
  }

  @override
  void didChangeDependencies() {
    getBoolIsOnlineFromCache();
    getKeysFromCache();
    super.didChangeDependencies();
  }

  getBoolIsOnlineFromCache() async {
    _isToggled = await SharedPrefHelper.getBool(SharedPrefKeys.isOnline);
    debugPrint("getBoolIsOnlineFromCache   $_isToggled");
  }

  getKeysFromCache() async {
    convertedKeys = await SharedPrefHelper.retrieveConvertedKeysSecurely();
    debugPrint("getKeysFromCache   ${convertedKeys?.encryprionkey}");
    setState(() {});
  }
}
