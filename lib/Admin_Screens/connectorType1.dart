import 'package:evconnectfyp/Admin_Screens/station_Details.dart';
import 'package:evconnectfyp/Utils/appColors.dart';
import 'package:evconnectfyp/Utils/appImages.dart';
import 'package:evconnectfyp/Widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Widgets/custom_Button.dart';
import 'connectorType.dart';


class Connector_Type1 extends StatefulWidget {
  final VoidCallback next;
  final VoidCallback back;
  const Connector_Type1({super.key,required this.next,required this.back});

  @override
  State<Connector_Type1> createState() => _Connector_Type1State();
}

class Connector{
  String image;
  String title;
  String text1;
  String text2;
  String text3;
  String text4;
  String image2;
  
  Connector({required this.image,required this.title,required this.text1,
    required this.text2,required this.text3,required this.text4,required this.image2});
}





class _Connector_Type1State extends State<Connector_Type1> {

List<Connector>items=[
  Connector(image: AppImages.idea, title: 'jsvhsxchvxfghrfhgrhr',
      text1: 'cszc', text2: 'zczx', text3: 'xc', text4: 'shdcsvhchxvvc',image2:AppImages.dot ),
  Connector(image: AppImages.idea, title: 'jsvhshrfhgrhr',
      text1: 'cszc', text2: 'zczx', text3: 'xc', text4: 'shvvc',image2:AppImages.dot ),
  Connector(image: AppImages.idea, title: 'jsvhsxcgrhr',
      text1: 'cszc', text2: 'zczx', text3: 'xc', text4: 'shvvc',image2:AppImages.dot ),
  Connector(image: AppImages.idea, title: 'jsvhsrfhgrhr',
      text1: 'cszc', text2: 'zczx', text3: 'xc', text4: 'shchxvvc',image2:AppImages.dot ),
  Connector(image: AppImages.idea, title: 'jsvhhr',
      text1: 'cszc', text2: 'zczx', text3: 'xc', text4: 'shdcsvhvc',image2:AppImages.dot ),
  Connector(image: AppImages.idea, title: 'jsvhsrfhgrhr',
      text1: 'cszc', text2: 'zczx', text3: 'xc', text4: 'shdcchxvvc',image2:AppImages.dot ),
  Connector(image: AppImages.idea, title: 'jsvhs',
      text1: 'cszc', text2: 'zczx', text3: 'xc', text4: 'shgf',image2:AppImages.dot ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,bottom: 30).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: "Your Connector Types",size: 16.sp,weight: FontWeight.bold,),
              Expanded(
                child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100.h,
                          width: 290.w,
                          decoration: BoxDecoration(
                            color:AppColors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(items[index].image,scale: 3,),
                                SizedBox(width: 15.w,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        height:25.h,
                                        width: 150.w,
                                        child: CustomText(text: items[index].title,weight: FontWeight.bold,size: 20.sp,)),
                                    SizedBox(height: 10.h,),
                                    Row(
                                      children: [
                                        Container(
                                            height:20,
                                            width: 50,
                                            child: CustomText(text: items[index].text1)),
                                        SizedBox(width: 30.w,),
                                        Container(
                                            height:20,
                                            width: 50,
                                            child: CustomText(text: items[index].text2)),
                                        SizedBox(width: 30.w,),
                                        Container(
                                            height:20,
                                            width: 50,
                                            child: CustomText(text: items[index].text3)),

                                      ],
                                    ),
                                    SizedBox(height: 05.h,),
                                    Row(
                                      children: [
                                        Container(
                                            height:20,
                                            width: 130,
                                            child: CustomText(text: items[index].text4)),
                                        SizedBox(width: 20.w,),
                                        CustomText(text: 'Connector',),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(width: 35,),

                                Image.asset(items[index].image2.toString(),scale: 4,),
                              ],
                            ),
                          ),
                        ),
                      );

                }),
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
              ]
          ),


            ],
          ),
        ),
      ),
    );
  }
}
