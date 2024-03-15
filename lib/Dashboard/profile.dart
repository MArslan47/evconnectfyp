import 'package:flutter/material.dart';

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
          onPressed: (){Navigator.pushNamed(context, 'dashboard');},icon: const Icon(Icons.arrow_back_ios)),
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
                      color: const Color(0xff0d98b9).withOpacity(0.1),
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
            ProfileMenuWidget(title: 'Biling Details', icon: Icons.wallet, onPress: (){},),
            ProfileMenuWidget(title: 'User Managment', icon: Icons.manage_accounts, onPress: (){},),
            const Divider(color: Colors.grey,),
            const SizedBox(height: 10,),
            ProfileMenuWidget(title: 'Information', icon: Icons.info, onPress: (){},),
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

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon=true,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
       child: Container(
         width: 35,
         height: 35,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
         color: const Color(0xff0d98b9).withOpacity(0.1),
        ),
         child:  Padding(
           padding:const EdgeInsets.symmetric(horizontal: 05),
          child: Icon(icon,color:const Color(0xff0d98b9) ),
      ),
              ),
            ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 00),
          child: Text(title,style: Theme.of(context).textTheme.bodyLarge?.apply(color: textColor)),
        ),
       trailing:endIcon? Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color(0xff0d98b9).withOpacity(0.1),
        ),
           child: const Padding(
             padding: EdgeInsets.symmetric(horizontal: 05),
             child: Icon(Icons.arrow_forward_ios,color:Colors.black ),
       ),
    ):null,
               );
  }
}







