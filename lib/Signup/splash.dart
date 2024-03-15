import 'package:evconnectfyp/Utils/appImages.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late AnimationController _textController;

  @override
  void initState() {
    super.initState();
    _initAnimations();
    _navigateHome();
  }

  void _initAnimations() {
    _textController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _textController.forward();
  }
  _navigateHome() async {
    print('Waiting for 3 seconds...');
    await Future.delayed(const Duration(milliseconds: 3000), () {
      print('Navigating to login screen...');
    });
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyLogin()));
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder(
              duration: const Duration(seconds: 2),
              tween: Tween<double>(begin: 0, end: 1),
              builder: (BuildContext context, double value, Widget? child) {
                return Transform.scale(
                  scale: value,
                  child: Container(
                    height: 298,
                    width: 300,
                    color: Colors.white,
                    child: Image.asset(AppImages.logo),
                  ),
                );
              },
            ),
            SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-1, 0),
                end: const Offset(0.2, 0),
              ).animate(_textController),
              child: const Text(
                'Welcome To EV CONNECT+ ',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
