import 'package:evconnectfyp/Admin_Screens/connectorType1.dart';
import 'package:evconnectfyp/Utils/appColors.dart';
import 'package:evconnectfyp/Widgets/customText.dart';
import 'package:evconnectfyp/Widgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Connector_Type extends StatefulWidget {
  const Connector_Type({super.key});

  @override
  State<Connector_Type> createState() => _Connector_TypeState();
}

class _Connector_TypeState extends State<Connector_Type> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.cync,
        title: Padding(
          padding: const EdgeInsets.only(left: 30).r,
          child: Text('Connector Type'),
        ),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(15.r),
          child: Column(
            children: [
              SizedBox(height: 10.h,),
              CustomTextField(text: "Connector Type",suffix: Icon(Icons.arrow_drop_down),),
              SizedBox(height: 10.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 60.h,
                      width: 160.w,
                      child: CustomTextField(text: 'Power (KW)*')),

                  Container(
                      height: 60.h,
                      width: 160.w,
                      child: CustomTextField(text: 'Intensity')),
                ],
              ),
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 60.h,
                      width: 160.w,
                      child: CustomTextField(text: 'Voltage')),

                  Container(
                      height: 60.h,
                      width: 160.w,
                      child: CustomTextField(text: 'Format',suffix: Icon(Icons.arrow_drop_down))),
                ],
              ),
              SizedBox(height: 10.h,),
              CustomTextField(text: "Connector Type",suffix: Icon(Icons.arrow_drop_down),),
              SizedBox(height: 30.h,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Connector_Type1()));
                },
                child: Container(
                  height: 50.h,
                  width: 250.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r,
                    color: AppColors.cync,

                  ),
                  child: Center(child: CustomText(text: 'Add Connector',color: AppColors.white,size: 14.sp,)),
                ),
              ),
              SizedBox(height: 10.h,),
              Text("CANCEL"),

            ],
          ),
        ),
      ),
    );
  }
}
