import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/appColors.dart';
class Custom_Button extends StatelessWidget {
  void Function() onTap;
  String text;
   Custom_Button({super.key,required this.text,required this.onTap});




  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50.h,
        width: 120,
        decoration: BoxDecoration(
          color: AppColors.cync,
          borderRadius: BorderRadius.circular(10).r,
        ),
        child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 14.sp,
              ),

            )
        ),
      ),
    );
  }
}
