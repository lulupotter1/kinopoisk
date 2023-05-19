import 'package:flutter/material.dart';
import 'package:kinopoisk/utis/unfocus.dart';

/// Wrapper widget that hides the keyboard and other dialog windows when
/// the child widget is clicked.

class KeyboardDismissOnTap extends StatelessWidget {
  const KeyboardDismissOnTap({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: unfocus, child: child);
  }
}
