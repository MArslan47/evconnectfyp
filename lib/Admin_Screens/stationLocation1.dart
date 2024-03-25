import 'package:evconnectfyp/Admin_Screens/connectorType.dart';
import 'package:evconnectfyp/Admin_Screens/google_Map.dart';
import 'package:evconnectfyp/Utils/appColors.dart';
import 'package:evconnectfyp/Widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../Widgets/custom_Button.dart';
class StationLocation1 extends StatefulWidget {
  final VoidCallback next;
  final VoidCallback back;
  const StationLocation1({super.key,required this.next,required this.back});

  @override
  State<StationLocation1> createState() => _StationLocation1State();
}

class _StationLocation1State extends State<StationLocation1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20).r,
                    child: CustomText(text: 'This is Your Location',weight: FontWeight.bold,size: 16.sp,),
                  ),
                  SizedBox(height: 20.h,),
                  Center(
                    child: Container(
                      height: 200.h,
                      width: 325.w,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(12).r,
                          child: MapSample()),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(12).r,
                        border: Border.all(color: AppColors.cync,width: 2.w,),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20).r,
                    child: const TextField(
                      cursorColor: AppColors.cync,
                      decoration: InputDecoration(
                        labelText: 'Address*',
                        labelStyle: TextStyle(color: AppColors.grey),
                        enabledBorder:OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.grey),
                        ) ,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.cync),
                        )

                      ),
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20).r,
                    child:const IntlPhoneField(
                      cursorColor: AppColors.grey,
                      decoration: InputDecoration(

                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.grey),
                      ) ,

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
                  ),
                  SizedBox(height: 20.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Custom_Button(text: 'PREVIOUS', onTap: (){widget.back();}),
                      SizedBox(width: 20.w,),
                      Custom_Button(text: 'NEXT', onTap: (){
                       widget.next();
                      })

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
