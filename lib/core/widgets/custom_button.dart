import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final String? iconPath;
  final double? fontSize;
  final Color? backgroundColor;
  final Color? textColor;
  final bool? isDisabled;
  final EdgeInsetsGeometry? padding;
  final IconData? icon;
  final TextDirection textDirection;
  const CustomButton._internal(
      {super.key,
      required this.text,
      this.icon,
      this.padding,
      this.textColor,
      this.isDisabled = false,
      this.textDirection = TextDirection.ltr,
      required this.onPressed,
      this.iconPath,
      this.fontSize,
      this.backgroundColor});

  // Factory constructor for button with an icon
  factory CustomButton.withIcon({
    required String text,
    required VoidCallback onPressed,
    required String? iconPath,
    TextDirection textDirection = TextDirection.ltr,
    double? fontSize,
    bool? isDisabled = false,
    IconData? icon,
    EdgeInsetsGeometry? padding,
    Color? textColor,
    Color? backgroundColor,
    Key? key,
  }) {
    return CustomButton._internal(
      key: key,
      text: text,
      padding: padding,
      fontSize: fontSize,
      onPressed: onPressed,
      isDisabled: isDisabled,
      textDirection: textDirection,
      icon: icon,
      iconPath: iconPath,
      backgroundColor: backgroundColor,
      textColor: textColor,
    );
  }

  // Factory constructor for button without an icon
  factory CustomButton.withoutIcon({
    required String text,
    required VoidCallback onPressed,
    bool isDisabled = false,
    double? fontSize,
    EdgeInsetsGeometry? padding,
    Color? backgroundColor,
    Color? textColor,
    Key? key,
  }) {
    return CustomButton._internal(
      key: key,
      text: text,
      fontSize: fontSize,
      onPressed: onPressed,
      isDisabled: isDisabled,
      textColor: textColor,
      padding: padding,
      backgroundColor: backgroundColor,
    );
  }
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: isDisabled == true ? null : onPressed,
        iconAlignment: textDirection == TextDirection.ltr
            ? IconAlignment.start
            : IconAlignment.end,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          // disabledBackgroundColor: backgroundColor ?? ColorsManager.buttonColor,
          minimumSize: Size.zero,
          padding:
              padding ?? EdgeInsets.symmetric(vertical: 9.h, horizontal: 0),
        ),
        label: Text(
          text,
          style: TextStyle(
              color: textColor ?? Colors.black,
              fontSize: fontSize?.sp ?? 11.sp),
        ),
        icon: iconPath != null
            ? SvgPicture.asset(
                iconPath!,
                height: 16.h,
                width: 10.w,
              )
            : icon != null
                ? Icon(
                    icon,
                    color: Colors.black87,
                  )
                : null);
  }
}
