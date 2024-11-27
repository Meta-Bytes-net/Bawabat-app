import 'package:bwabat/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static TextStyle getTextStyle(
      {Color? color, FontWeight? fontWeight, double? fontSize}) {
    return TextStyle(
        fontSize: fontSize ?? 14.sp,
        fontWeight: fontWeight ?? FontWeightHelper.regular,
        color: color ?? Colors.white,
        fontFamily: GoogleFonts.montserrat().fontFamily);
  }

  static TextStyle font30BlackExtraBold =
      getTextStyle(fontSize: 30.sp, fontWeight: FontWeightHelper.extraBold);
  static TextStyle font20BlackExtraBold =
      getTextStyle(fontSize: 20.sp, fontWeight: FontWeightHelper.extraBold);
  static TextStyle font20WhiteSemiBold =
      getTextStyle(fontSize: 20.sp, fontWeight: FontWeightHelper.semiBold);
  static TextStyle font25WhiteMedium =
      getTextStyle(fontSize: 25.sp, fontWeight: FontWeightHelper.medium);
  static TextStyle font14WhiteSemiBold =
      getTextStyle(fontSize: 14.sp, fontWeight: FontWeightHelper.semiBold);
  // unused
  static TextStyle font16GreenExtraBold = TextStyle(
      fontSize: 28.sp,
      fontWeight: FontWeightHelper.extraBold,
      // color: ColorsManager.containerTitleColor,
      fontFamily: GoogleFonts.lato().fontFamily);
  static TextStyle font14darkrBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,

    // color: ColorsManager.darkAppBarBackGround,
    // fontFamily: 'Tajawal'
  );
  static TextStyle font15whiteMedium = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.white,
    // fontFamily: 'Tajawal'
  );
  static TextStyle font17whiteMedium = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.white,
    // fontFamily: 'Tajawal'
  );
  static TextStyle font12witeRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.white,
    // fontFamily: 'Tajawal'
  );
  static TextStyle font26whiteRegular = TextStyle(
    color: Colors.white,
    fontSize: 28.sp,
    fontWeight: FontWeightHelper.regular,
    // fontFamily: 'Tajawal'
  );
  static TextStyle font24limeExtraBold = TextStyle(
    fontSize: 24.sp,
    // color: ColorsManager.limeColor,
    fontWeight: FontWeight.w800,
    // fontFamily: 'Tajawal'
  );
  static TextStyle font15limeExtraBold = TextStyle(
    fontSize: 18.sp,
    // color: ColorsManager.limeColor,
    fontWeight: FontWeight.w400,
    // fontFamily: 'Tajawal'
  );
}

extension TextStyleHelper on TextStyle {
  TextStyle get w400 => copyWith(fontWeight: FontWeightHelper.regular);
  TextStyle get w500 => copyWith(fontWeight: FontWeightHelper.medium);
  TextStyle get w600 => copyWith(fontWeight: FontWeightHelper.semiBold);
  TextStyle get w700 => copyWith(fontWeight: FontWeightHelper.bold);
  TextStyle get w800 => copyWith(fontWeight: FontWeightHelper.extraBold);
}
