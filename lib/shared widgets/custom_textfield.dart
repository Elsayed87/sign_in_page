// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sign_in_page/const/color.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.hintText, this.isHide});
  final String hintText;
  final bool? isHide;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.grayColor.withOpacity(0.2),
          border: Border.all(
              color: AppColor.blackColor.withOpacity(0.1), width: 1.w),
          borderRadius: BorderRadius.circular(12.r)),
      child: TextField(
        obscureText: isHide ?? false,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(color: AppColor.grayColor.withOpacity(0.7)),
            contentPadding: EdgeInsets.only(left: 16.w)),
        style: TextStyle(color: AppColor.blackColor, fontSize: 18.sp),
      ),
    );
  }
}
