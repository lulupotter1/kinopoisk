import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kinopoisk/utis/theme_colors.dart';
import 'package:kinopoisk/utis/theme_text_styles.dart';

class CommonTextButton extends StatelessWidget {
  void Function()? onTap;
  final String text;
  final bool withBorder;
  CommonTextButton({
    Key? key,
    this.onTap,
    required this.text,
    this.withBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 17.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: onTap != null ? ThemeColors.yellow : ThemeColors.grey,
        ),
        child: Text(
          text,
          style: ThemeTextNotoSansSemiBold.size16.copyWith(
            color: onTap != null ? ThemeColors.black : ThemeColors.white,
          ),
        ),
      ),
    );
  }
}
