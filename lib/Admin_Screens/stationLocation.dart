import 'package:evconnectfyp/Admin_Screens/connectorType.dart';
import 'package:evconnectfyp/Admin_Screens/google_Map.dart';
import 'package:evconnectfyp/Admin_Screens/stationLocation1.dart';
import 'package:evconnectfyp/Utils/appColors.dart';
import 'package:evconnectfyp/Widgets/customText.dart';
import 'package:evconnectfyp/Widgets/customTextField.dart';
import 'package:evconnectfyp/Widgets/custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class StationLocation extends StatefulWidget {
  final VoidCallback next;
  final VoidCallback back;
  const StationLocation({super.key,required this.next,required this.back});

  @override
  State<StationLocation> createState() => _StationLocationState();
}

class _StationLocationState extends State<StationLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20).r,
              child: Column(
                children: [
                  CustomTextField(text: 'Where is the charging station?',prefix: Icon(Icons.search),),
                  SizedBox(height: 10.h,),
                  Container(
                    height: 400.h,
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
