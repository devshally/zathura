import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:zathura_v1/src/core/on_boarding_screen/on_boarding.dart';

class splashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      pageTransitionType: PageTransitionType.rightToLeft,
      duration: 7000,
      backgroundColor: Color(071126),
      splash: Container(
        child: Center(
          child: Text(
            'ZATHURA',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 26.0,
            ),
          ),
        ),
      ),
      nextScreen: OnBoarding(),
    );
  }
}