import 'package:bwabat/core/routing/routes.dart';
import 'package:bwabat/core/theming/text_styles.dart';
import 'package:bwabat/core/widgets/custom_button.dart';
import 'package:bwabat/features/main_layout/ui/screen/scan_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../../core/resources/app_assets.dart';
import '../../../../core/resources/sizes.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF081B33),
      padding: const EdgeInsets.only(
        right: 30,
        left: 30,
        top: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
            child: SvgPicture.asset(
              height: 50,
              width: 50,
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
          gapH16,
          Text(
            'Scan the QR code of the device',
            textAlign: TextAlign.center,
            style: TextStyles.font25WhiteMedium,
          ),
          gapH64,
          SvgPicture.asset(Assets.svgsQrCode),
          gapH32,
          Text(
            'The QR code will be automatically detected when you position it between the guide lines',
            textAlign: TextAlign.center,
            style: TextStyles.font14WhiteSemiBold,
          ),
          gapH24,
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  child: CustomButton.withoutIcon(
                    textColor: Colors.white,
                    fontSize: 18,

                    backgroundColor: const Color.fromARGB(255, 25, 75, 136),

                    padding: const EdgeInsets.symmetric(vertical: 13),
                    text: 'Scan Now',
                    onPressed: () {
                      PersistentNavBarNavigator.pushNewScreenWithRouteSettings(
                        context,
                        settings: const RouteSettings(name: Routes.scanScreen),
                        screen: const ScanScreen(),
                        withNavBar: true,
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                    },
                    // child: const Text('Login'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
