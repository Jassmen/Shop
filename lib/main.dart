import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/color_theme.dart';
import 'package:shop_app/screens/dashboard_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
       DeviceOrientation.portraitUp
    ]);

    return ScreenUtilInit(
      designSize:Size(360,750) ,
      builder:()=> MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: kWhite,
          primarySwatch: kPrimaryColor,
          appBarTheme: AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle.light,/////////
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: kPrimaryColor),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: kPrimaryColor
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: kPrimaryColor)
            ),
            // focusedBorder: OutlineInputBorder(
            //     borderSide: BorderSide(color: kPrimaryColor)
            // ),
            hoverColor: kPrimaryColor,
            contentPadding: EdgeInsets.all(5.w),


          ),

        ),
        home:DashboardScreen(),
      ),
    );
  }
}


