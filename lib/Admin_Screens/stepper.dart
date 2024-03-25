import 'package:easy_stepper/easy_stepper.dart';
import 'package:evconnectfyp/Admin_Screens/admin_Details.dart';
import 'package:evconnectfyp/Admin_Screens/connectorType.dart';
import 'package:evconnectfyp/Admin_Screens/connectorType1.dart';
import 'package:evconnectfyp/Admin_Screens/newStation.dart';
import 'package:evconnectfyp/Admin_Screens/stationLocation.dart';
import 'package:evconnectfyp/Admin_Screens/stationLocation1.dart';
import 'package:evconnectfyp/Admin_Screens/station_Details.dart';
import 'package:evconnectfyp/Utils/appColors.dart';
import 'package:flutter/material.dart';

class AdminStepper extends StatefulWidget {
  const AdminStepper({Key? key}) : super(key: key);

  @override
  State<AdminStepper> createState() => _AdminStepperState();
}

class _AdminStepperState extends State<AdminStepper> {
  int activeStep = 0;
  final int totalSteps = 7;


  void moveBack(){
    if (activeStep < totalSteps){
      setState(() {
        activeStep--;
      });
    }
  }

  // Method to move to the next step
  void moveToNextStep() {
    if (activeStep < totalSteps - 1) {
      setState(() {
        activeStep++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Admin Panel',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: AppColors.cync,
      ),
      body: Column(
        children: [
          Container(
            height: 110.0, // Adjust the height as needed
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: EasyStepper(
                direction: Axis.horizontal,
                activeStep: activeStep,
                lineStyle: const LineStyle(
                  lineLength: 60,
                  activeLineColor: AppColors.cync,
                  finishedLineColor: AppColors.cync,
                ),
                disableScroll: false,
                activeStepTextColor: AppColors.cync,
                finishedStepTextColor: AppColors.cync,
                internalPadding: 30,
                showLoadingAnimation: false,
                stepRadius: 25,
                showStepBorder: true,
                activeStepBackgroundColor: Colors.white,
                activeStepBorderColor: AppColors.cync,
                finishedStepBackgroundColor: Colors.white,
                finishedStepBorderColor: AppColors.cync,
                finishedStepIconColor: AppColors.cync,
                borderThickness: 20,
                activeStepIconColor: AppColors.grey,
                steps: const [
                  EasyStep(
                    customStep: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.ev_station, color: AppColors.grey),
                    ),
                    title: 'Station Details',
                  ),
                  EasyStep(
                    customStep: Center(
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child:
                        Icon(Icons.location_searching, color: AppColors.grey),
                      ),
                    ),
                    title: 'Add Location',
                  ),
                  EasyStep(
                    customStep: Center(
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child:
                        Icon(Icons.location_searching, color: AppColors.grey),
                      ),
                    ),
                    title: 'Address',
                  ),
                  EasyStep(
                    customStep: Center(
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.cable, color: AppColors.grey),
                      ),
                    ),
                    title: 'Connector',
                  ),
                  EasyStep(
                    customStep: Center(
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.cable,
                            color: AppColors.grey),
                      ),
                    ),
                    title: 'Connector',
                  ),
                  EasyStep(
                    customStep: Center(
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.battery_charging_full,
                            color: AppColors.grey),
                      ),
                    ),
                    title: 'Charger Details',
                  ),
                  EasyStep(
                    customStep: Center(
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.admin_panel_settings, color: AppColors.grey),
                      ),
                    ),
                    title: 'Owner Details',
                  ),
                ],
                onStepReached: (index) {
                  setState(() => activeStep = index);
                },
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: IndexedStack(
              index: activeStep,
              children: [
                NewStation(next: moveToNextStep),
                StationLocation(next: moveToNextStep,back: moveBack,),
                StationLocation1(next: moveToNextStep,back: moveBack,),
                Connector_Type(next: moveToNextStep,back: moveBack,),
                Connector_Type1(next: moveToNextStep,back: moveBack,),
                Station_Details(next: moveToNextStep,back: moveBack,),
                Admin_Details(back: moveBack,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
