import 'package:evconnectfyp/Utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Custom_TextField extends StatelessWidget {
  Widget? suffix;
  String text;
  Widget? prefix;
  Custom_TextField({super.key, this.suffix, required this.text,  this.prefix});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
         labelText: text,
        labelStyle:  TextStyle(
          color: AppColors.grey,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto-Regular',
        ),
        prefixIcon: prefix,
        suffixIcon: suffix,
        // Image.asset(
        //   AppImages.emailIcon,
        //   scale: 3.h,
        // ),
        enabledBorder:OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.grey),
        ) ,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.grey),
        ),

      ),
    );
  }
}