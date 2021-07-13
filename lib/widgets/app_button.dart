import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/color_theme.dart';
import 'package:shop_app/widgets/index.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final double? width ;
  final double? height;
  final VoidCallback? onPress;
  final bool isUpperCase;
  final Color color;
  final double? radius;

  const AppButton(
      {this.text,
      required this.onPress,
      this.width = 1,
      this.height = 50,
      this.isUpperCase = true,
      this.color = kPrimaryColor,
      this.radius = 5});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width!.sw,
      height: height!.h,
      child: MaterialButton(
        onPressed: onPress,
        child: AppText(
          isUpper : isUpperCase,
          text: text!,
          color: Colors.white),
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius!.w),
      ),
    );
  }

}
