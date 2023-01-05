import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/color.dart';

class AppSignInButton extends StatelessWidget {
  const AppSignInButton({
    required this.labelText,
    super.key,
  });
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColor.purpleColor),
      child: Text(
        textAlign: TextAlign.center,
        labelText,
        style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
      ),
    );
  }
}