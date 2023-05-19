import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'theme_colors.dart';

class ThemeTextNotoSansSemiBold {
  static const fontWeight = FontWeight.w600;
  static const fontFamily = "NotoSansSemiBold";
  static const fontColor = ThemeColors.white;

  static final size16 = TextStyle(
    color: fontColor,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
    letterSpacing: 0,
    fontSize: 16.sp,
  );
}

class ThemeTextNotoSansRegular {
  static const fontWeight = FontWeight.w400;
  static const fontFamily = "NotoSansRegular";
  static const fontColor = ThemeColors.white;

  static final size14 = TextStyle(
    color: fontColor,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
    letterSpacing: 0,
    fontSize: 14.sp,
  );
}

class ThemeTextNotoSansMedium {
  static const fontWeight = FontWeight.w500;
  static const fontFamily = "NotoSansMedium";
  static const fontColor = ThemeColors.white;

  static final size16 = TextStyle(
    color: fontColor,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
    fontStyle: FontStyle.normal,
    letterSpacing: 0,
    fontSize: 16.sp,
  );
}
