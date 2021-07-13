import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppText extends StatelessWidget {
  final String? text;
  final Color color;
  final double? fontSize;
  final FontWeight fontWeight;
  final double height;
  final TextDirection textDirection;
  final double? letterSpacing;
  final bool isUpper;

  const AppText({
      this.text,
      this.letterSpacing,
      this.fontSize = 16,
      this.fontWeight = FontWeight.normal,
      this.textDirection = TextDirection.ltr,
      this.color = Colors.black,
      this.height = 1,
      this.isUpper = false,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      isUpper ? text!.toUpperCase() : text!,
      textDirection: textDirection,
      style: TextStyle(
        color: color,
        fontSize: fontSize!.sp,
        fontWeight: fontWeight,
        height: height ,
        letterSpacing: letterSpacing ?? 1.0,
      ),

    );
  }
}
