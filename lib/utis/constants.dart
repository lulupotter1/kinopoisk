import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kinopoisk/presentation/main/main_detail_screen.dart';
import 'package:kinopoisk/presentation/main/main_screen.dart';

abstract class Constants {
  //common
  static const appTitle = 'Kinopoisk';

  //dio
  static const apiUrl = "https://api.kinopoisk.dev/v1.3/movie";

  static Dio kinoApi = Dio(BaseOptions(headers: {
    "X-API-KEY": "G4VHX2D-41BM3SM-J6X3NAW-P7CY7V7",
  }));

//model
  static String getString(String? text) {
    return text ?? "";
  }

//navigation
  static Map<String, Widget Function(BuildContext)> appRoutes = {
    AppRoutesString.routeToMainScreen: (BuildContext context) => const MainScreen(),
    AppRoutesString.routeToMainDetailScreen: (BuildContext context) => const MainDetailScreen(),
  };
}

class AppRoutesString {
  static const String routeToMainScreen = 'MainScreen';
  static const String routeToMainDetailScreen = 'MainDetailScreen';
}

extension ExDateTime on DateTime {
  DateTime in00_00() => DateTime(year, month, day);
}
