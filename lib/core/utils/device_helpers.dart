import 'package:flutter/material.dart';


class DeviceHelpers {

  /// Getting Full Screen Width
  static double getFullScreenWidth (BuildContext context){
    return MediaQuery.sizeOf(context).width;
  }

  /// Getting Full Screen Height
 static double getFullScreenHeight (BuildContext context){
    return MediaQuery.sizeOf(context).height;
 }



}