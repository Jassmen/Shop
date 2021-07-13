import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Widget appImage(String img) => Container(
  height: 1.sh,
  width: 1.sw,
  child: Image.asset(img,fit: BoxFit.fill,),
);