import 'package:bwabat/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

Future<void> stopLoading(BuildContext context) async {
  Navigator.of(context).pop();
}

Future<void> startLoading(BuildContext context) async {
  return await showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return loadingSpinKit();
    },
  );
}

Widget loadingSpinKit() {
  return Center(
    child: Center(
      child: LoadingAnimationWidget.discreteCircle(
        color: ColorsManager.primaryColor,
        secondRingColor: const Color(0xFF1A1A3F),
        thirdRingColor: ColorsManager.primaryColor,
        size: 50,
      ),
    ),
  );
}
