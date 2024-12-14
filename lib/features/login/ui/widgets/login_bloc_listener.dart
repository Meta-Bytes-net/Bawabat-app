import 'package:bwabat/core/helpers/extensions.dart';
import 'package:bwabat/core/routing/routes.dart';
import 'package:bwabat/core/widgets/overlay_loading_state.dart';
import 'package:flash/flash.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/networking/api_error_model.dart';
import '../../../../core/theming/text_styles.dart';
import '../../logic/login_cubit.dart';
import '../../logic/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginErrorState ||
          current is LoginSuccessState ||
          current is LoginLoadingState,
      listener: (context, state) {
        state.whenOrNull(
          loginLoadingState: () => startLoading(context),
          loginSuccessState: (loginResponse) {
            stopLoading(context);
            context.pushNamedAndRemoveUntil(Routes.mainLayoutScreen,
                predicate: (context) => false);
          },
          loginErrorState: (apiErrorModel) {
            setupErrorState(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, ApiErrorModel apiErrorModel) {
    context.pop();
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
        title: const Text('Authification Error'),
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
