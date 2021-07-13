import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final bool autofocus;
  final ButtonStyle? style;

  AppTextButton(
      {required this.onPressed,
      this.autofocus = false,
      this.style,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: child,
      autofocus: autofocus,
      style: style,


    );
  }
}
