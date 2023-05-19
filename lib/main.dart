import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kinopoisk/data/getx/get_controller.dart';
import 'package:kinopoisk/utis/constants.dart';

import 'presentation/main/bloc/main_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(GetController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: ScreenUtilInit(
          designSize: const Size(414, 896),
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              routes: Constants.appRoutes,
              initialRoute: AppRoutesString.routeToMainScreen,
              title: Constants.appTitle,
            );
          }),
    );
  }
}
