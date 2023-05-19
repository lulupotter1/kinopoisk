import 'package:flutter/material.dart';
import 'package:kinopoisk/presentation/common_widget/common_keyboard_dismiss.dart';
import 'package:kinopoisk/utis/theme_colors.dart';

class CommonScaffold extends StatelessWidget {
  final Widget body;
  const CommonScaffold({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        backgroundColor: ThemeColors.bg,
        body: WillPopScope(
          onWillPop: () async => false,
          child: body,
        ),
      ),
    );
  }
}
