import 'package:bwabat/core/helpers/navigator_helper.dart';
import 'package:bwabat/core/networking/api_error_model.dart';
import 'package:bwabat/core/theming/text_styles.dart';
import 'package:bwabat/features/main_layout/logic/cubit/home_cubit.dart';
import 'package:flash/flash.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';

class HomeBlocListener extends StatelessWidget {
  final Widget? child;
  const HomeBlocListener({super.key, this.child});

  @override
  Widget build(BuildContext context) {
   
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        state.maybeWhen(
          signoutLoading: () {
            if (kDebugMode) {
              print("Signout loading...");
            }
            // Show loading indicator if needed
          },
          signoutError: () {
            if (kDebugMode) {
              print("Signout error occurred");
            }
            setupErrorState(context , ApiErrorModel(message: "Signout error occurred"));
          },
          signoutSuccess: () {
            if (kDebugMode) {
              print("Signout success - navigating to login");
            }
            // Use NavigationService for consistent navigation
              NavigationService.pushAndRemoveUntilTo(Routes.loginScreen);
          },
          
          syncError: (message) {
            // print(" Sync error occurred: ___$message");
                        setupErrorState(context , ApiErrorModel(message: message),title:message);

        
          },
          orElse: () {
            if (kDebugMode) {
              print("Current state: $state");
            }
          },
        );
      },
      child: child,
    );
  }

 void setupErrorState(BuildContext context, ApiErrorModel apiErrorModel,{String? title}) {
    context.showFlash<bool>(
      builder: (context, controller) => FlashBar( 
        controller: controller,
        behavior: FlashBehavior.floating,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          side: BorderSide(
            color: Colors.red,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
        margin: const EdgeInsets.all(32.0),
        clipBehavior: Clip.antiAlias,
        indicatorColor: Colors.red,
        icon: const Icon(Icons.error),
        title: const Text('Error Occurred'),
        content: Text(
          apiErrorModel.getAllErrorMessages(),
          style: TextStyles.font15whiteMedium.copyWith(color: Colors.black87),
        ),
      ),
    );
    // context.showFlash<bool>(
    //   builder: (context, controller) => FlashBar(
    //     controller: controller,
    //     indicatorColor: Colors.red,
    //     icon: const Icon(Icons.tips_and_updates_outlined),
    //     title: const Text('Authification Error'),
    //     content: Text(
    //       apiErrorModel.getAllErrorMessages(),
    //       style: TextStyles.font15whiteMedium.copyWith(color: Colors.black87),
    //     ),
    //     actions: [
    //       TextButton(
    //           onPressed: controller.dismiss, child: const Text('Cancel')),
    //       TextButton(
    //           onPressed: () => controller.dismiss(true),
    //           child: const Text('Ok'))
    //     ],
    //   ),
    // );
    // context.showFlash(
    //     content: );
    // showDialog(
    //   context: context,
    //   builder: (context) => AlertDialog(
    //     icon: const Icon(
    //       Icons.error,
    //       color: Colors.red,
    //       size: 32,
    //     ),
    //     content: Text(
    //       apiErrorModel.getAllErrorMessages(),
    //       style: TextStyles.font15whiteMedium.copyWith(color: Colors.black87),
    //     ),
    //     actions: [
    //       TextButton(
    //         onPressed: () {
    //           context.pop();
    //         },
    //         child: Text(
    //           'Got it',
    //           style: TextStyles.font30BlackExtraBold.copyWith(fontSize: 14.sp),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
