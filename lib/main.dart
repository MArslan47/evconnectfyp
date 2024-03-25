import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'Admin_Screens/newStation.dart';
import 'Admin_Screens/stepper.dart';
import 'Dashboard/dashboard.dart';
import 'Dashboard/favourite.dart';
import 'Dashboard/home.dart';
import 'Dashboard/profile.dart';
import 'Dashboard/update_profile.dart';
import 'Signup/login.dart';
import 'Signup/register.dart';
import 'Signup/splash.dart';
import 'firebase_options.dart';

void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 780),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'splash',
        routes: {
          'login': (context) => const MyLogin(),
          'register': (context) => const MyRegister(),
          'dashboard': (context) => const MyDashboard(),
          'fav': (context) => Favourite(),
          'profile': (context) => const ProfileScreen(),
          'update_profile': (context) => UpdateProfileScreen(),
          'home': (context) => Home(),
        },
        home: const Splash(),
      ),
    );
  }
}

