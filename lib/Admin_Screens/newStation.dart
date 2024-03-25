import 'package:evconnectfyp/Admin_Screens/connectorType.dart';
import 'package:evconnectfyp/Admin_Screens/stationLocation.dart';
import 'package:evconnectfyp/Utils/AppConstant.dart';
import 'package:evconnectfyp/Utils/appColors.dart';
import 'package:evconnectfyp/Utils/appImages.dart';
import 'package:evconnectfyp/Widgets/customText.dart';
import 'package:evconnectfyp/Widgets/customTextField.dart';
import 'package:evconnectfyp/Widgets/custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

class NewStation extends StatefulWidget {
  final VoidCallback next;
  const NewStation({super.key,required this.next});

  @override
  State<NewStation> createState() => _NewStationState();
}



class _NewStationState extends State<NewStation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,bottom: 30).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h,),
              Image.asset(AppImages.electricCar),
              SizedBox(height: 20.h,),
              CustomText(text: "Enter Station Details",size: 16.sp,weight: FontWeight.bold,),
              SizedBox(height: 20.h,),
              CustomTextField(text: "Charging Station Name*", ),
              SizedBox(height: 10.h,),
              CustomTextField(text: 'Charging Station Type*',suffix: Icon(Icons.arrow_drop_down),),
              SizedBox(height: 10.h,),
              CustomTextField(text: "Charging Station Status*",suffix: Icon(Icons.arrow_drop_down),),
              SizedBox(height: 10.h,),
              CustomTextField(text: "Energy Source*",suffix: Icon(Icons.arrow_drop_down),),
              SizedBox(height: 40.h,),
              Padding(
                padding: const EdgeInsets.only(left: 190).r,
                child: Custom_Button(text:'NEXT',
                    onTap: (){
                      widget.next();
                }
                ),
              )







            ],
          ),
        ),
      ),
    );
  }
}





