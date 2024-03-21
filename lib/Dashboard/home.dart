import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_places_flutter/google_places_flutter.dart';
import 'package:google_places_flutter/model/prediction.dart';

import '../Utils/appImages.dart';

class Home extends StatefulWidget {
  final LatLng? initialLocation;

  const Home({
    Key? key,
    this.initialLocation,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Completer<GoogleMapController> _controller = Completer();
  late GoogleMapController mapController;




  final CameraPosition _cameraPosition = const CameraPosition(
    target: LatLng(33.738045, 73.084488),
    zoom: 14,
  );

  @override
  void initState() {
    _marker.addAll(_list);
    super.initState();
  }



 final List<Marker> _marker=[];
 final List<Marker>_list=const[
    Marker(markerId: MarkerId('01'),
      position: LatLng(33.738045, 73.084488),
      infoWindow: InfoWindow(
        title: 'Current Location'
      )
    ),
   Marker(markerId: MarkerId('02'),
       position: LatLng(33.738055, 73.08558),
       infoWindow: InfoWindow(
           title: 'see it'
       )
   ),
   Marker(markerId: MarkerId('03'),
       position: LatLng(33.7380040, 73.08000),
       infoWindow: InfoWindow(
           title: 'Other'
       )
   ),
   Marker(markerId: MarkerId('04'),
       position: LatLng(26.778111, 82.134598),
       infoWindow: InfoWindow(
           title: 'Other'
       )
   ),
   Marker(markerId: MarkerId('04'),
       position: LatLng(33.658664032 ,73.085499658),
       infoWindow: InfoWindow(
           title: 'Other'
       )
   ),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(initialCameraPosition: _cameraPosition,
            markers: Set<Marker>.of(_marker),
          onMapCreated: (GoogleMapController controller){
            _controller.complete(controller);
          },
        ),



           Padding(
             padding: const EdgeInsets.only(top: 500,left: 300).r,
             child: FloatingActionButton(
              child: Icon(Icons.location_searching_outlined),
              onPressed: () async{
                GoogleMapController controller= await _controller.future;
                controller.animateCamera(
                    CameraUpdate.newCameraPosition(
                        const CameraPosition(target:  LatLng(33.658664032 ,73.085499658),
                          zoom: 14,
                        )
                    ));
                setState(() {
                });
              },
             ),
           ),

        ]
      ),

    );
  }
}
