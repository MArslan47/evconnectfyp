import 'package:evconnectfyp/Utils/appColors.dart';
import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        appBar: AppBar(
          backgroundColor:AppColors.cync,
          title: Text('Your favourite station'),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient:const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [ Color(0xff0d98b9),  Color(0xff04333a)],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),

        ),


    );
  }
}

