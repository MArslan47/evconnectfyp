import 'package:evconnectfyp/Admin_Screens/admin_Details.dart';
import 'package:evconnectfyp/Widgets/customText.dart';
import 'package:evconnectfyp/Widgets/custom_TextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets/custom_Button.dart';
class Station_Details extends StatefulWidget {
  final VoidCallback next;
  final VoidCallback back;
  const Station_Details({super.key,required this.next,required this.back});

  @override
  State<Station_Details> createState() => _Station_DetailsState();
}

class _Station_DetailsState extends State<Station_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,bottom: 20).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: 'More Information',size: 16.sp,weight: FontWeight.bold,),
                SizedBox(height: 20.h,),
                Custom_TextField(text: 'Energy Type*'),
                SizedBox(height: 10.h,),
                Custom_TextField(text: 'Booking Options*',suffix: Icon(Icons.arrow_drop_down),),
                SizedBox(height: 10.h,),
                Custom_TextField(text: 'Schedule'),
                SizedBox(height: 10.h,),
                Custom_TextField(text: 'Max Limit time'),
                SizedBox(height: 10.h,),
                Custom_TextField(text: 'Charging session price'),
                SizedBox(height: 10.h,),
                Custom_TextField(text: 'Parking price'),
                SizedBox(height: 30.h,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Custom_Button(text: 'PREVIOUS', onTap: (){widget.back();}),
                      SizedBox(width: 20.w,),
                      Custom_Button(text: 'NEXT', onTap: (){widget.next();})
                    ]
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
