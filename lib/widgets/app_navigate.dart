import 'package:flutter/material.dart';

void navigateTo(context , widget) =>Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget)
);

//**************************************

void navigateAndEnd(context , widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => widget),
    (Route<dynamic> route) => false // equaled (route) => return false;
);