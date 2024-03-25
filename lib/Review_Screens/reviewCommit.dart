import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/appColors.dart';
import '../Utils/appImages.dart';
import '../Widgets/customText.dart';
class ReviewCommits extends StatefulWidget {
  const ReviewCommits({super.key});

  @override
  State<ReviewCommits> createState() => _ReviewCommitsState();
}

class _ReviewCommitsState extends State<ReviewCommits> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.cync,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 25,right: 25).r,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Center(
                child: Container(
                  child: Column(
                    children: [
                      Image.asset(AppImages.feedback,scale: 5.sp,),
                      SizedBox(height: 20.h,),
                      CustomText(text: 'Customer Support',size: 20.sp,weight: FontWeight.bold,
                        color: AppColors.black1,),
                      SizedBox(height: 25.h,),
                      TextField(
                        maxLines: 3,
                        decoration: InputDecoration(
                          hintText: 'Describe the issue (At least 20 Characters)',
                          hintStyle: TextStyle(fontSize: 14.sp),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.cync
                              ),
                              borderRadius: BorderRadius.circular(15.r)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.cync
                              ),
                              borderRadius: BorderRadius.circular(15.r)
                          ),

                        ),
                      ),
                      SizedBox(height: 50.h,),
                      Container(
                        height: 50.h,
                        width: 250.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10).r,
                          color: AppColors.cync
                        ),
                        child: Center(child: CustomText(text: 'Send Feedback',color: AppColors.white,)),
                      )

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
