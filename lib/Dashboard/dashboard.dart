import 'package:evconnectfyp/Dashboard/profile.dart';
import 'package:evconnectfyp/Dashboard/slot.dart';
import 'package:evconnectfyp/Dashboard/update_profile.dart';
import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

import 'favourite.dart';
import 'home.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {


  int _SelectIndex = 0;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(_SelectIndex),
      bottomNavigationBar: Container(
        color:const Color(0xff0d98b9),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: GNav(
            backgroundColor: const Color(0xff0d98b9),
            color: Colors.grey.shade800,
            activeColor: Colors.grey.shade800,
            tabBackgroundColor: Colors.white,
            padding: const EdgeInsets.all(10),
            selectedIndex: _SelectIndex,
            onTabChange: (index) {
              setState(() {
                _SelectIndex = index;
              });
            },
            tabs: const [
              GButton(
                icon: Icons.map_outlined,
                text: 'Map',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Favorite',
              ),
              GButton(
                icon: Icons.time_to_leave,
                text: 'Slot',
              ),
              GButton(
                icon: Icons.account_circle_outlined,
                text: 'Profile',
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return _buildMapScreen();
      case 1:
        return _buildFavoriteScreen();
      case 2:
        return _buildSlotScreen();
      case 3:
        return _buildProfileScreen();
      case 4:
        return _buildUpdateProfileScreen();
      default:
        return Container();
    }
  }

  Widget _buildMapScreen() {
    // Replace this with the widget for your Home screen.
    return   Home();
  }

  Widget _buildFavoriteScreen() {
    // Replace this with the widget for your Favorite screen.
    return Favourite();
  }

  Widget _buildSlotScreen() {
   return const Slot();
  }

  Widget _buildProfileScreen() {
    // Replace this with the widget for your Profile screen.
    return const ProfileScreen();
  }
}
Widget _buildUpdateProfileScreen() {
  // Replace this with the widget for your Profile screen.
  return const UpdateProfileScreen();
}

