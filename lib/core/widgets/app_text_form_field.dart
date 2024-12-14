import 'package:bwabat/core/theming/colors.dart';
import 'package:bwabat/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
//
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
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
  final String label;
  final String? restorationId;
  final int? maxLine;
  final Validator validator;
  final bool? isEnabled;
  final Color? hintTextColor;
  final ValueChanged<String?>? onChanged;
  final FocusNode? focusNode;

  const AppTextFormField(
      {super.key,
      this.borderRadius,
      this.restorationId,
      this.focusNode,
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
      required this.label,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 5.h),
        child: FormBuilderTextField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          name: label,
          cursorRadius: Radius.circular(20.r),
          obscureText: isObscureText ?? false,
          validator: validator,
          autofocus: false,
          focusNode: focusNode,
          controller: controller,
          enabled: isEnabled ?? true,
          maxLines: maxLine,
          onChanged: onChanged,
          style: inputTextStyle ?? TextStyles.font15whiteMedium,
          decoration: InputDecoration(
            // labelStyle: TextStyles.font20BlackExtraBold.copyWith(
            //     fontSize: 16.sp,
            //     color: ColorsManager.primaryColor,
            //     backgroundColor: const Color(0xFF081B33)),

            alignLabelWithHint: true,
            fillColor: backgroundColor ?? const Color.fromARGB(255, 36, 63, 99),
            floatingLabelStyle: const TextStyle(color: Colors.white),
            labelStyle: TextStyles.font15whiteMedium.copyWith(fontSize: 15.sp),
            labelText: label,
            // label: Container(
            //   padding: const EdgeInsets.all(5),
            //   decoration: const BoxDecoration(
            //     color: Color(0xFF081B33),
            //     borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(10),
            //       topRight: Radius.circular(10),
            //       bottomLeft: Radius.circular(10),
            //       bottomRight: Radius.circular(10),
            //     ),
            //   ),
            //   child: Text(
            //     label,
            //     style: TextStyles.font20BlackExtraBold
            //         .copyWith(color: Colors.white, fontSize: 18),
            //   ),
            // ),
            isDense: false,
            contentPadding: contentPadding ??
                EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
            focusedBorder: focusedBorder ??
                OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 1.3, color: ColorsManager.primaryColor),
                  borderRadius: BorderRadius.circular(borderRadius ?? 30.r),
                ),
            enabledBorder: enabledBorder ??
                OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 1.3, color: ColorsManager.primaryColor),
                  borderRadius: BorderRadius.circular(borderRadius ?? 30.r),
                ),
            disabledBorder: enabledBorder ??
                OutlineInputBorder(
                  borderSide: const BorderSide(
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
                color: Colors.red,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(borderRadius ?? 30.r),
            ),
            hintStyle: hintStyle ??
                TextStyles.font30BlackExtraBold.copyWith(fontSize: 16.sp),
            // hintText: "asd",
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            filled: true,
          ),
          // : isObscureText ?? false,
          // style: TextStyles.font15whiteMedium.copyWith(
          //     fontSize: 16.sp,
          //     decoration: TextDecoration.none,
          //     decorationThickness: 0),
        ));
  }
}

typedef Validator = String? Function(String?)?;
