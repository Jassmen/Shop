import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/color_theme.dart';
import 'package:shop_app/screens/shop_signup_screen.dart';
import 'package:shop_app/widgets/index.dart';

class ShopLoginScreen extends StatelessWidget {
  ShopLoginScreen() : super();

  @override
  Widget build(BuildContext context) {
    final List<String> errors = [];

    return Scaffold(
      appBar: AppBar(),
      body: _buildBody(errors, context),
    );
  }

  Widget _buildBody(List<String> errors, BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: [
            30.heightBox,
            Center(
             child: AppText(
              text: 'LOGIN',
              fontWeight: FontWeight.w600,
              fontSize: 30,
            )),
            10.heightBox,
            AppText(
              text: 'Login now to browse our free offers',
              fontWeight: FontWeight.w600,
            ),
            (.1.sh- 20).heightBox,
            AppTextFormField(
               labelText: 'Enter Email' ,
              textInputType: TextInputType.emailAddress,
              prefix: Icons.email_outlined,
              validator: (value) {
                if (value!.isEmpty) {
                  return kEmailNullError;
                } else if (!emailValidatorRegExp.hasMatch(value) &&
                    !errors.contains(kInvalidEmailError)) {
                  return kInvalidEmailError;
                }
                return null;
              },
            ),
            20.heightBox,
            AppTextFormField(
              labelText: 'Password',
              textInputType: TextInputType.visiblePassword,
              prefix: Icons.lock_open_outlined,
              suffix: Icons.visibility_outlined,
              validator: (value) {
                if (value!.isEmpty) {
                  return kPassNullError;
                } else if (value.length < 4) {
                  return kShortPassError;
                } else {
                  return null;
                }
              },
            ),
            30.heightBox,
            AppButton(
              text: 'login',
              onPress: () {},
            ),
            10.heightBox,
            Row(
              children: [
                AppText(
                  text: 'Don\'t have an account?',
                ),
                AppTextButton(
                    onPressed: () => navigateTo(context, ShopSignUpScreen()),
                    child: AppText(
                      text: 'Signup',
                      isUpper: true,
                      color: kPrimaryColor,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
