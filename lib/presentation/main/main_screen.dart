import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/data/getx/get_controller.dart';
import 'package:kinopoisk/data/models/kino_model.dart';
import 'package:kinopoisk/presentation/common_widget/common_button.dart';
import 'package:kinopoisk/presentation/common_widget/common_scaffold.dart';
import 'package:kinopoisk/presentation/common_widget/common_textfield.dart';
import 'package:kinopoisk/presentation/main/bloc/main_bloc.dart';
import 'package:kinopoisk/presentation/main/main_widget/main_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk/utis/constants.dart';
import 'package:kinopoisk/utis/theme_colors.dart';
import 'package:kinopoisk/utis/theme_text_styles.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController searchController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  final ScrollController scrollController = ScrollController();
  List<KinoModel> allKinoList = [];
  bool firstTime = true;
  ValueNotifier<bool> textNotifier = ValueNotifier(false);

  int curPage = 1;
  bool showLoading = false;
  @override
  void initState() {
    searchController.addListener(() {
      if (searchController.text.replaceAll(" ", "").isNotEmpty) {
        textNotifier.value = true;
      } else {
        textNotifier.value = false;
      }
    });
    scrollController.addListener(() {
      if (scrollController.offset == scrollController.position.maxScrollExtent && searchController.text.isNotEmpty) {
        if (curPage <= Get.find<GetController>().maxPage) {
          curPage++;
          context.read<MainBloc>().add(MainEvent.getKino(
                curPage: curPage,
                name: searchController.text,
              ));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              elevation: 0,
              behavior: SnackBarBehavior.floating,
              backgroundColor: ThemeColors.transparent,
              padding: EdgeInsets.zero,
              content: Container(
                // alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                decoration: BoxDecoration(color: ThemeColors.white, borderRadius: BorderRadius.circular(40.r)),
                child: Text(
                  "Максимум страниц",
                  textAlign: TextAlign.center,
                  style: ThemeTextNotoSansRegular.size14.copyWith(color: ThemeColors.black),
                ),
              )));
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w).copyWith(top: 70.h, bottom: 20.h),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: CommonTextField(
                    controller: searchController,
                    hintText: "Поиск по имени кино...",
                    focusNode: focusNode,
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: ValueListenableBuilder<bool>(
                    builder: (BuildContext context, bool value, Widget? child) {
                      return CommonTextButton(
                        text: 'Поиск',
                        onTap: value
                            ? () {
                                curPage = 1;
                                firstTime = true;
                                allKinoList.clear();
                                focusNode.unfocus();
                                context
                                    .read<MainBloc>()
                                    .add(MainEvent.getKino(curPage: curPage, name: searchController.text));
                              }
                            : null,
                      );
                    },
                    valueListenable: textNotifier,
                  ),
                )
              ],
            ),
            SizedBox(height: 20.h),
            BlocConsumer<MainBloc, MainState>(
              listener: (context, state) {
                state.whenOrNull(
                  error: (errorMessage) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        elevation: 0,
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: ThemeColors.transparent,
                        padding: EdgeInsets.zero,
                        content: Container(
                          // alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                          decoration:
                              BoxDecoration(color: ThemeColors.white, borderRadius: BorderRadius.circular(40.r)),
                          child: Text(
                            errorMessage,
                            textAlign: TextAlign.center,
                            style: ThemeTextNotoSansRegular.size14.copyWith(color: ThemeColors.black),
                          ),
                        )));
                  },
                );
              },
              builder: (context, state) {
                state.whenOrNull(
                  loaded: (kinoList) {
                    showLoading = false;
                    firstTime = false;

                    allKinoList.addAll(kinoList);
                  },
                  loading: () {
                    showLoading = true;
                  },
                  error: (errorMessage) {
                    showLoading = false;
                  },
                );

                return Expanded(
                  child: Column(
                    children: [
                      if (showLoading && firstTime) ...[
                        SizedBox(height: 20.h),
                        const CircularProgressIndicator(
                          color: ThemeColors.yellow,
                        ),
                      ],
                      if (allKinoList.isEmpty && !firstTime && !showLoading) ...[
                        SizedBox(height: 20.h),
                        Text(
                          "По запросу '${searchController.text}' ничего не найдено.",
                          style: ThemeTextNotoSansSemiBold.size16,
                          textAlign: TextAlign.center,
                        )
                      ],
                      Expanded(
                        child: ListView.separated(
                          controller: scrollController,
                          itemBuilder: (context, index) {
                            return InkWell(
                                onTap: () {
                                  var controller = Get.find<GetController>();
                                  controller.selectedKino = allKinoList[index];
                                  Navigator.pushNamed(context, AppRoutesString.routeToMainDetailScreen);
                                },
                                child: MainContainer(kinoData: allKinoList[index]));
                          },
                          separatorBuilder: (context, index) => SizedBox(height: 12.h),
                          itemCount: allKinoList.length,
                        ),
                      ),
                      if (showLoading && !firstTime) ...[
                        SizedBox(height: 20.h),
                        const CircularProgressIndicator(
                          color: ThemeColors.yellow,
                        ),
                      ]
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
