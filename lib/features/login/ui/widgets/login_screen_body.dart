import 'package:bwabat/core/resources/app_assets.dart';
import 'package:bwabat/core/theming/text_styles.dart';
import 'package:bwabat/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pretty_animated_text/pretty_animated_text.dart';

import 'build_login_container.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 30,
        left: 30,
        top: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: SvgPicture.asset(
              height: 100,
              width: 100,
              Assets.svgsBawabatLogo,
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          )
              .animate()
              .slide(duration: const Duration(seconds: 1))
              .fadeIn(
                duration: const Duration(seconds: 1),
              )
              .scale(duration: const Duration(seconds: 1)),
          Align(
            alignment: Alignment.centerLeft,
            child: OffsetText(
              text: 'Welcome back!',
              duration: const Duration(seconds: 1),
              type: AnimationType.word,
              textStyle:
                  TextStyles.font20BlackExtraBold.copyWith(color: Colors.white),
            ),
          ),
          // Align(
          //     child: Text('Welcome back!',
          //         style: TextStyles.font20BlackExtraBold
          //             .copyWith(color: ColorsManager.midnightBlue))),
          SizedBox(height: 5.h),
          Align(
            alignment: Alignment.centerLeft,
            child: OffsetText(
              text: 'Please, Log in',
              duration: const Duration(seconds: 2),
              type: AnimationType.word,
              textStyle:
                  TextStyles.font30BlackExtraBold.copyWith(color: Colors.white),
            ),
          ),

          const SizedBox(height: 20),
          const BuildLoginContainer(),
          const LoginBlocListener(),
        ],
      ),
    );
  }
}
