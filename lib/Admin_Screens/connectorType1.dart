import 'package:evconnectfyp/Utils/appColors.dart';
import 'package:evconnectfyp/Widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Connector_Type1 extends StatefulWidget {
  const Connector_Type1({super.key});

  @override
  State<Connector_Type1> createState() => _Connector_Type1State();
}

class _Connector_Type1State extends State<Connector_Type1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: "Your Connector Types"),
              SizedBox(
                height: 140.h,
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                            color:AppColors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.add_circle,size: 30.sp,),
                                SizedBox(width: 20.w,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(text: 'Type-2',weight: FontWeight.bold,size: 20.sp,),
                                    SizedBox(height: 10.h,),
                                    Row(
                                      children: [
                                        CustomText(text: '3 KW'),
                                        SizedBox(width: 60.w,),
                                        CustomText(text: '555 V'),
                                        SizedBox(width: 60.w,),
                                        CustomText(text: '55 A'),

                                      ],
                                    ),
                                    Row(
                                      children: [
                                        CustomText(text: 'MonoPhase (AC)'),
                                        SizedBox(width: 40.w,),
                                        CustomText(text: 'Connector'),
                                      ],
                                    ),
                                  ],
                                ),
                                
                                Icon(Icons.abc,size: 30.sp,),
                              ],
                            ),
                          ),
                        ),
                      );

                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
