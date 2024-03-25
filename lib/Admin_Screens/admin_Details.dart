import 'package:evconnectfyp/Widgets/customText.dart';
import 'package:evconnectfyp/Widgets/custom_Button.dart';
import 'package:evconnectfyp/Widgets/custom_TextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../Utils/appColors.dart';
class Admin_Details extends StatefulWidget {

  final VoidCallback back;
  const  Admin_Details({super.key,required this.back});

  @override
  State<Admin_Details> createState() => _Admin_DetailsState();
}

class _Admin_DetailsState extends State<Admin_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: 'Owner Related Information',size: 16.sp,weight: FontWeight.bold,),
                SizedBox(height: 20.h,),
                Custom_TextField(text: 'Owner Name*'),
                SizedBox(height: 10.h,),
                Custom_TextField(text: 'Adress*'),
                SizedBox(height: 10.h,),
                const IntlPhoneField(
                  cursorColor: AppColors.grey,
                  decoration: InputDecoration(
                    labelText: 'Phone Number*',
                    labelStyle: TextStyle(color: AppColors.grey),
                    enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.grey),
                    ) ,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.grey),
                    ),
                  ),
                ),
                SizedBox(height: 10.h,),
                Custom_TextField(text: 'Email*'),
                SizedBox(height: 20.h,),
                CustomText(text: 'Add Front & Back CNIC',size: 16.sp,weight: FontWeight.bold,),
                SizedBox(height:10.h ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: 'Front',size: 14.sp,color: AppColors.grey,),
                        SizedBox(height: 05.h,),
                        Container(
                          height: 120.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.cync),
                            borderRadius: BorderRadius.circular(10).r
                          ),
                          child: Icon(Icons.camera_alt,size: 35.sp,color: AppColors.grey,),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: 'Back',size: 14.sp,color: AppColors.grey,),
                        SizedBox(height: 05.h,),
                        Container(
                          height: 120.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.cync),
                              borderRadius: BorderRadius.circular(10).r
                          ),
                          child: Icon(Icons.camera_alt,size: 35.sp,color: AppColors.grey,),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.h,),
                Center(child: Custom_Button(text: 'DONE', onTap: (){})),
                SizedBox(height: 20.h,),
                Custom_Button(text: 'PREVIOUS', onTap: (){widget.back();})

              ],
            ),
          ),
        ),
      ),
    );
  }
}
