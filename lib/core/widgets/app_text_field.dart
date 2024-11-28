import 'package:bwabat/core/theming/font_weight_helper.dart';
import 'package:bwabat/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
//
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String? hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final double? borderRadius;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final String? label;
  final String? restorationId;
  final int? maxLine;
  final Validator validator;
  final bool? isEnabled;
  final Color? hintTextColor;
  final Function(String)? onChanged;
  const AppTextField(
      {super.key,
      this.borderRadius,
      this.restorationId,
      this.isEnabled,
      this.contentPadding,
      this.onChanged,
      this.hintTextColor,
      this.maxLine = 1,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      this.hintText,
      this.isObscureText,
      this.suffixIcon,
      this.backgroundColor,
      this.controller,
      this.prefixIcon,
      this.label,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      child: TextFormField(
        restorationId: restorationId,
        controller: controller,
        validator: validator,
        enabled: isEnabled,
        maxLines: maxLine,
        onChanged: onChanged,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          labelText: label,
          isDense: false,
          // label: label != null ? Text(label!) : null,
          labelStyle: TextStyles.font15whiteMedium.copyWith(
              // color: ColorsManager.saerchTextFieldHintColor,
              fontSize: 17.sp),
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(
                  // color: ColorsManager.saerchTextFieldHintColor,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(borderRadius ?? 30.r),
              ),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(
                  // color: ColorsManager.saerchTextFieldHintColor,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(borderRadius ?? 30.r),
              ),
          disabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(
                  // color: ColorsManager.saerchTextFieldHintColor,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(borderRadius ?? 30.r),
              ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(borderRadius ?? 30.r),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              // color: ColorsManager.saerchTextFieldHintColor,
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(borderRadius ?? 30.r),
          ),
          hintStyle: hintStyle ??
              TextStyles.font15whiteMedium.copyWith(
                  fontWeight: FontWeightHelper.regular,
                  // color:
                  //     hintTextColor ?? ColorsManager.saerchTextFieldHintColor,
                  fontSize: 17.sp),
          // ??
          //  TextStyles.font14LightGrayRegular,
          hintText: hintText,
          suffixIcon: suffixIcon,
          // fillColor: ColorsManager.saerchTextFieldColor,
          prefixIcon: prefixIcon,
          // ?? ColorsManager.moreLightGray,
          filled: true,
        ),
        obscureText: isObscureText ?? false,
        style: TextStyles.font15whiteMedium.copyWith(
            fontSize: 16.sp,
            decoration: TextDecoration.none,
            decorationThickness: 0),
      ),
    );
  }
}

typedef Validator = String? Function(String?)?;
