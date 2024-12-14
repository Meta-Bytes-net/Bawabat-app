import 'package:bwabat/core/helpers/extensions.dart';
import 'package:bwabat/core/theming/text_styles.dart';
import 'package:bwabat/features/main_layout/logic/cubit/home_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/navigator_helper.dart';
import '../../../../core/routing/routes.dart';

class HomeBlocListener extends StatelessWidget {
  final Widget? child;
  const HomeBlocListener({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        {
          state.whenOrNull(
            signoutError: () => setupErrorState(context),
            signoutSuccess: () async {
              if (kDebugMode) {
                print("isSignedOutListener");
              }
              WidgetsBinding.instance.addPostFrameCallback((_) {
                NavigationService.navigatorkey.currentState
                    ?.pushNamedAndRemoveUntil(
                  Routes.loginScreen,
                  (predicate) => false,
                );
              });
            },
          );
        }
      },
      child: child,
    );
  }

  void setupErrorState(BuildContext context) {
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
          "Fetal error occurred. Please try again later.",
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
