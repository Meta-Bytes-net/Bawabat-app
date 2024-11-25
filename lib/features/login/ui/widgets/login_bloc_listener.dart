import 'package:bwabat/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/networking/api_error_model.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/login_cubit/login_cubit.dart';
import '../../logic/login_cubit/login_state.dart';

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
          loginLoadingState: () => Container(),
          loginSuccessState: (loginResponse) {
            // getIt<AppPreferences>()
            //     .setUserId(loginResponse.data?.user?.id.toString() ?? "");
            // stopLoading(context);
            // context.pushNamedAndRemoveUntil(Routes.homeScreen,
            //     predicate: (context) => false);
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
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          apiErrorModel.getAllErrorMessages(),
          style: TextStyles.font15whiteMedium.copyWith(color: Colors.black87),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font30BlackExtraBold.copyWith(fontSize: 14.sp),
            ),
          ),
        ],
      ),
    );
  }
}
