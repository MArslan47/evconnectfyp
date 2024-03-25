import 'package:evconnectfyp/Review_Screens/reviewCommit.dart';
import 'package:evconnectfyp/Widgets/custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Utils/appColors.dart';
import '../Utils/appImages.dart';
import '../Widgets/customText.dart';
class ReviewRate extends StatefulWidget {
  const ReviewRate({super.key});

  @override
  State<ReviewRate> createState() => _ReviewRateState();
}

class _ReviewRateState extends State<ReviewRate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.cync,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 25,right: 25).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(
              child: Column(
                children: [
                  Image.asset(AppImages.rate,scale: 5.sp,),
                  SizedBox(height: 20.h,),
                  CustomText(text: 'Do you Like EVCONNECT+\n Services? ',
                    size: 20.sp,align: TextAlign.center,
                    weight: FontWeight.w600,color: AppColors.black1,)
                ],
              ),
            ),
            SizedBox(height: 40.h,),
            Center(
              child: Column(
                children: [
                  CustomText(text: 'We are working hard for a better user \nexperience.',
                    size: 14.sp,color: AppColors.black,
                    align: TextAlign.center,weight: FontWeight.w400,),
                  SizedBox(height: 15.h,),
                  CustomText(text: 'We’d greatly appreciate if you can rate\n us',
                    size: 14.sp,color: AppColors.black,
                    align: TextAlign.center,weight: FontWeight.w400,),
                  SizedBox(height: 40.h,),
                  RatingBar.builder(
                    initialRating: 0,
                    minRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0).r,
                    itemBuilder: (context, _) => Icon(Icons.star, color: AppColors.cync,),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(height: 15.h,),
                  CustomText(text: 'The best we can get',
                    size: 14.sp,color: AppColors.black,
                    align: TextAlign.center,weight: FontWeight.w400,),
                  SizedBox(height: 50.h,),
                  Custom_Button(text: 'Rate', onTap: (){Get.to(()=>ReviewCommits());})


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
