import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeColors {
  static Color yellow = const Color(0x00ffcb62);
  static Color orange = const Color(0xFFFFA84A);
  static Color milk = const Color(0xFFFFF2E3);
  static Color dark = const Color(0xFF202020);
  static Color gray = const Color(0xFF6A6C6D);
  static Color lightGray = const Color(0xFF6A6C6D).withOpacity(0.2);
  static Color red = const Color(0xFFE44242);
  static Color blue = const Color(0xFF6E8EFF);
  static Color shadow = const Color(0x40000000);
}

class ThemeStyles {
  static final TextStyle textStyle1 = TextStyle(
    fontSize: 19.sp,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.3,
    height: 23 / 19,
    color: ThemeColors.dark,
  );

  static final TextStyle textStyle2 = TextStyle(
    fontSize: 27.sp,
    fontWeight: FontWeight.w900,
    color: ThemeColors.dark,
  );

  static final TextStyle textStyle3 = TextStyle(
    fontSize: 27.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    height: 1.3,
  );

  static final TextStyle textStyle4 = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: ThemeColors.gray,
  );

  static final TextStyle textStyle5 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
    color: ThemeColors.gray,
    height: 1.3,
  );

  static final TextStyle textStyle6 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    height: 24 / 15,
    letterSpacing: -0.3,
    color: ThemeColors.gray,
  );

  static final TextStyle textStyle7 = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    height: 15 / 13,
    letterSpacing: -0.3,
    color: ThemeColors.orange,
  );

  static final TextStyle textStyle8 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
    color: ThemeColors.orange,
  );

  static final TextStyle textStyle9 = TextStyle(
    fontSize: 19.sp,
    fontWeight: FontWeight.w700,
    color: ThemeColors.orange,
  );

  static final TextStyle textStyle10 = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    color: ThemeColors.orange,
  );

  static final TextStyle textStyle11 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
    color: ThemeColors.red,
  );

  static final TextStyle textStyle12 = TextStyle(
    fontSize: 19.sp,
    fontWeight: FontWeight.w400,
    height: 32 / 19,
    letterSpacing: -0.3,
    color: ThemeColors.blue,
  );

  static final TextStyle textStyle13 = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    color: ThemeColors.blue,
  );

  static final TextStyle textStyle14 = TextStyle(
    fontSize: 27.sp,
    fontWeight: FontWeight.w900,
    height: 32 / 27,
    letterSpacing: -0.3,
    color: ThemeColors.dark,
  );
}
