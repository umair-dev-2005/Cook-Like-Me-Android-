import 'dart:async';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2) , (){
     Get.offNamed(RouteNames.onBoardingScreen);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// App Logo
      body: Center(child: Image.asset(AppAssets.appLogo,
      width: 250,),),
    );
  }
}
