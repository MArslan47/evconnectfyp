import 'package:evconnectfyp/Admin_Screens/connectorType.dart';
import 'package:evconnectfyp/Utils/appColors.dart';
import 'package:evconnectfyp/Utils/appImages.dart';
import 'package:evconnectfyp/Widgets/customText.dart';
import 'package:evconnectfyp/Widgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class NewStation extends StatefulWidget {
  const NewStation({super.key});

  @override
  State<NewStation> createState() => _NewStationState();
}



class _NewStationState extends State<NewStation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.cync,
          title: Padding(
            padding: const EdgeInsets.only(left: 80).r,
            child: Text('Station Details'),
          ),

      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h,),
                Image.asset(AppImages.electricCar,),
                SizedBox(height: 20.h,),
                CustomText(text: "Enter Station Details",size: 16.sp,),

                SizedBox(height: 20.h,),
                CustomTextField(text: "Charging Station Name*", ),
                SizedBox(height: 10.h,),
                CustomTextField(text: 'Charging Station Type*',suffix: Icon(Icons.arrow_drop_down),),
                SizedBox(height: 10.h,),
                CustomTextField(text: "Charging Station Status*",suffix: Icon(Icons.arrow_drop_down),),
                SizedBox(height: 10.h,),
                CustomTextField(text: "Energy Source*",suffix: Icon(Icons.arrow_drop_down),),
                SizedBox(height: 40.h,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Connector_Type()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 210),
                    child: Container(
                      height: 45.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: AppColors.cync,
                      ),
                      child: Center(child: CustomText(text: "Next",color: AppColors.white,size: 16.sp,)),
                    ),
                  ),
                ),







              ],
            ),
          ),
        ),
      ),
    );
  }
}





