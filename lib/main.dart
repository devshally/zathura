import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:zathura_v1/src/core/home_screen/home.dart';
import 'package:zathura_v1/src/core/on_boarding_screen/on_boarding.dart';
import 'package:zathura_v1/src/core/splash_screen/splash_screen.dart';

void main(){
  runApp(GetMaterialApp(
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    getPages: [
      GetPage(name: '/', page: ()=> splashScreen()),
      GetPage(name: '/onBoarding', page: ()=> OnBoarding()),
      GetPage(name: '/Home', page: ()=> HomeScreen()),
    ],
    home: splashScreen(),
  ));
}