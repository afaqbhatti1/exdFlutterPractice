import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'animated_bottomnav_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startDelay();
    print("Splash init");
  }

  startDelay() {
    Future.delayed(const Duration(seconds: 6), () {
      print("Time End");
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: ((context) => BottomNavBar())),
          (route) => false);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Image.asset('assets/images/2.png'),
          const SizedBox(),
          Lottie.asset(
            'json/9921-loader.json',
            width: 200,
            height: 200,
            repeat: true,
          )
        ],
      )),
    );
  }
}
