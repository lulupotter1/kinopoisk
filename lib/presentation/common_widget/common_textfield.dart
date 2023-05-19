import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kinopoisk/utis/theme_colors.dart';
import 'package:kinopoisk/utis/theme_text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final FocusNode focusNode;

  const CommonTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      style: ThemeTextNotoSansMedium.size16.copyWith(color: ThemeColors.black),
      decoration: InputDecoration(
        fillColor: ThemeColors.white,
        filled: true,
        contentPadding: EdgeInsets.all(12.sp),
        hintStyle: ThemeTextNotoSansRegular.size14.copyWith(color: ThemeColors.grey),
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: ThemeColors.stroke),
          borderRadius: BorderRadius.circular(20.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ThemeColors.stroke),
          borderRadius: BorderRadius.circular(20.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ThemeColors.stroke),
          borderRadius: BorderRadius.circular(20.r),
        ),
        prefixIcon: SvgPicture.asset(
          "assets/svg/search.svg",
          width: 24.sp,
          height: 24.sp,
        ),
      ),
    );
  }
}
