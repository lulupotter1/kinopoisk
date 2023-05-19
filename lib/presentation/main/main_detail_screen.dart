import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/data/getx/get_controller.dart';
import 'package:kinopoisk/data/models/kino_model.dart';
import 'package:kinopoisk/presentation/common_widget/common_scaffold.dart';
import 'package:kinopoisk/utis/theme_colors.dart';
import 'package:kinopoisk/utis/theme_text_styles.dart';

class MainDetailScreen extends GetView<GetController> {
  const MainDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    KinoModel kino = controller.selectedKino!;
    return CommonScaffold(
      body: Padding(
        padding: EdgeInsets.only(bottom: 20.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: CachedNetworkImageProvider(kino.poster.url), fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w).copyWith(top: 40.h),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                              controller.selectedKino = null;
                            },
                            icon: const Icon(
                              Icons.keyboard_backspace,
                              color: ThemeColors.white,
                              size: 40,
                            )),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    Text(
                      kino.name,
                      style: ThemeTextNotoSansSemiBold.size16.copyWith(fontSize: 30),
                    ),
                    SizedBox(height: 40.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Длительность",
                              style: ThemeTextNotoSansMedium.size16,
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              kino.movieLength?.toString() ?? "-",
                              style: ThemeTextNotoSansRegular.size14.copyWith(color: ThemeColors.grey),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Год",
                              style: ThemeTextNotoSansMedium.size16,
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              kino.year.toString(),
                              style: ThemeTextNotoSansRegular.size14.copyWith(color: ThemeColors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Рейтинг IMDb",
                              style: ThemeTextNotoSansMedium.size16,
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              kino.rating.imdb.toString(),
                              style: ThemeTextNotoSansRegular.size14.copyWith(color: ThemeColors.grey),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Рейтинг Кинопоиск",
                              style: ThemeTextNotoSansMedium.size16,
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              kino.rating.kp.toString(),
                              style: ThemeTextNotoSansRegular.size14.copyWith(color: ThemeColors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Text(
                      "Описание",
                      style: ThemeTextNotoSansMedium.size16,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      kino.description.toString(),
                      style: ThemeTextNotoSansRegular.size14.copyWith(color: ThemeColors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
