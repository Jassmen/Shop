import 'package:flutter/material.dart';
import 'package:shop_app/color_theme.dart';
import 'package:shop_app/models/boarding_model.dart';
import 'package:shop_app/screens/shop_login_screen.dart';
import 'package:shop_app/widgets/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class DashboardScreen extends StatefulWidget {
   DashboardScreen();
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  var boardController = PageController();
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: buildBody(context)

    );
  }

  Padding buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.w),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: AppTextButton(
                child: AppText(
                  text: 'Skip',
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  isUpper:true
                ),
              onPressed: ()=>navigateAndEnd(context, ShopLoginScreen()),
            ),),
          Expanded(child: buildPageView(),),
          40.heightBox,
          Row(
            children: [
            buildSmoothPageIndicator(),
            Spacer(),
            buildFloatingActionButton(context),
          ],
         )
        ],
      ),
    );
  }

  PageView buildPageView() {
    return PageView.builder(
              controller: boardController,
              physics: BouncingScrollPhysics(),
              itemCount: boardingList.length,
              onPageChanged: (int index){
                index == boardingList.length -1 ?
                    setState(()=>isLast = true)
                    : setState(() => isLast = false);
                print(isLast);
              },
              itemBuilder: (context, index) => pagerItem(boardingList[index]));
  }

  SmoothPageIndicator buildSmoothPageIndicator() {
    return SmoothPageIndicator(
                controller: boardController,
                count: boardingList.length,
              effect: ExpandingDotsEffect(
                dotColor: Colors.grey,
                dotHeight: 10.h,
                dotWidth: 10.w,
                spacing: 5.w,
                expansionFactor: 4.w
              ),
            );
  }

  FloatingActionButton buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(onPressed: (){
              if(isLast) setState(() {
                navigateAndEnd(context,ShopLoginScreen());
              });
              boardController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.fastLinearToSlowEaseIn);
            },child: Icon(Icons.arrow_forward_ios_rounded,),);
  }

  Widget pagerItem(BoardingModel boardingItem) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded( child: Padding(
          padding: const EdgeInsets.all(30),
          child: appImage(boardingItem.image ?? ''),
        ),),
        20.heightBox,
        AppText(text: boardingItem.title,fontSize: 20,fontWeight: FontWeight.w500,),
        20.heightBox,
        AppText(text: boardingItem.body),
      ]
    );
  }
}
