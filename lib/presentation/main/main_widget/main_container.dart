import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kinopoisk/data/models/kino_model.dart';
import 'package:kinopoisk/presentation/common_widget/common_network_image.dart';
import 'package:kinopoisk/utis/theme_colors.dart';
import 'package:kinopoisk/utis/theme_text_styles.dart';

class MainContainer extends StatelessWidget {
  final KinoModel kinoData;
  const MainContainer({
    Key? key,
    required this.kinoData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      decoration: BoxDecoration(
        color: ThemeColors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.r),
          bottomRight: Radius.circular(10.r),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: CommonNetworkImage(height: 100.h, imageUrl: kinoData.poster.previewUrl),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.all(8.sp),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          kinoData.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: ThemeTextNotoSansMedium.size16.copyWith(color: ThemeColors.black),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        kinoData.rating.imdb.toString(),
                        style: ThemeTextNotoSansRegular.size14.copyWith(color: ThemeColors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    kinoData.shortDescription.isNotEmpty ? kinoData.shortDescription : kinoData.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: ThemeTextNotoSansRegular.size14.copyWith(color: ThemeColors.black),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
