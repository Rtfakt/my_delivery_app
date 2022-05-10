import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';



class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Text('MY FOOD APP',),
      backgroundColor: Colors.black45,
      nextScreen: HomePage(),





    );
  }
}
