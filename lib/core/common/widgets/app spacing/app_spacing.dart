import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class AppSpacing {

  /// Function to Get Custom Width
  static Widget getWidth ({required double width}){
    return SizedBox(width:width);
  }

  /// Function to Get  Custom Height
 static Widget getHeight ({required double height}){
    return SizedBox(height:height);
 }

 /// Function to Get Full Screen Padding
 static EdgeInsets getScreenPadding (){
    return EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace);
 }



}