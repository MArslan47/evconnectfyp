import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomTextField extends StatelessWidget {
  Widget? suffix;
  String text;
  Widget prefix;
  CustomTextField({super.key, this.suffix, required this.text, required this.prefix});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: 325.w,
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(10.h),
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,

          )),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'Roboto-Regular',
          ),
          prefixIcon: prefix,
          suffixIcon: suffix,
          // Image.asset(
          //   AppImages.emailIcon,
          //   scale: 3.h,
          // ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,


          ),

        ),
      ),
    );
  }
}