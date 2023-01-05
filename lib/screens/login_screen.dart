import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_in_page/const/app_string.dart';
import 'package:sign_in_page/const/size_box.dart';
import 'package:sign_in_page/shared%20widgets/custom_textfield.dart';
import 'package:sign_in_page/shared%20widgets/signin_button.dart';

import '../const/color.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppString.loginImagePath,
                    height: 100.h,
                  ),
                  AppSizedBox.sizedBox30,
                  Text(AppString.headerText.toUpperCase(),
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.bebasNeue(
                        color: AppColor.blackColor,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                      )),
                  AppSizedBox.sizedBox10,
                  Text(
                    AppString.welcomeMessageText,
                    textAlign: TextAlign.center,
                    style: customTextStyle(),
                  ),
                  AppSizedBox.sizedBox30,
                  const CustomTextFeild(hintText: AppString.emailHintText),
                  AppSizedBox.sizedBox20,
                  const CustomTextFeild(
                      hintText: AppString.passwoedHintText, isHide: true),
                  AppSizedBox.sizedBox20,
                  const AppSignInButton(labelText: AppString.labelButtonText),
                  AppSizedBox.sizedBox20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppString.lastRowPartOneText,
                        style: customTextStyle(),
                      ),
                      Text(
                        AppString.lastRowPartTwoText,
                        style: customTextStyle(color: AppColor.blueColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }

  TextStyle customTextStyle(
      {Color? color, double? size, FontWeight? fontWeight}) {
    return TextStyle(
        fontWeight: fontWeight ?? FontWeight.bold,
        color: color ?? AppColor.blackColor,
        fontSize: size?.sp ?? 16.sp);
  }
}
