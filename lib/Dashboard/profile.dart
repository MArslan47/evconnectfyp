import 'package:evconnectfyp/Utils/appColors.dart';
import 'package:flutter/material.dart';
import '../Components/profileMenuWidget.dart';






class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){Navigator.pushNamed(context, 'dashboard');},
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 70),
          child: Text('Profile'),
        ),
      ) ,

      //BODY 
      body: SingleChildScrollView(
        child:Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(borderRadius: BorderRadius.circular(100),
                      child: const Image(image: AssetImage('assets/logo.jpeg'),)),
                ),

                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppColors.cync,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 05),
                      child: Icon(Icons.edit,color:Colors.black ),
                    ),
                  ),
                )
              ],
            ),

            Text('M Arslan CH',style: Theme.of(context).textTheme.headline4,),
            Text('marslanch7@gmail.com',style: Theme.of(context).textTheme.headline6,),
            const SizedBox(height: 05,),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {Navigator.pushNamed(context, 'update_profile');},

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff0d98b9),side: BorderSide.none,shape: const StadiumBorder()),
                child: const Text('Edit Profile',style: TextStyle(color:Colors.black)),
              ),
            ),

            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 05),

            //Menu



            ProfileMenuWidget(title: 'Settings', icon: Icons.settings, onPress: (){},),
            ProfileMenuWidget(title: 'Billing Details', icon: Icons.wallet, onPress: (){},),
            ProfileMenuWidget(title: 'User Management', icon: Icons.manage_accounts, onPress: (){},),
            const Divider(color: Colors.grey,),
            const SizedBox(height: 10,),
            ProfileMenuWidget(title: 'Information', icon: Icons.info, onPress: (){},),
            ProfileMenuWidget(title: "Admin", icon: Icons.admin_panel_settings_outlined, onPress: (){}),
            ProfileMenuWidget(title: 'Logout',
              icon: Icons.logout ,
              textColor: Colors.red,
              endIcon: false,
              onPress: (){Navigator.pushNamed(context, 'login');},),

         ]
                 ),
      ),
    );

  }
}
