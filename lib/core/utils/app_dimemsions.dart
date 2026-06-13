import 'package:flutter/material.dart';


class AppDimensions {
  static late double hRatio;

  static late double wRatio;

  /// Function to Calculate Ratio Between Size (Width & Height) Of Device Screen
  ///  And Size(Width & Height) of Figma Design Screen

  static void calculateScreenSizeRatio({
    required BuildContext context,
    required double figmaScreenHeight,
    required double figmaScreenWidth,
  }) {
    hRatio = MediaQuery.sizeOf(context).height / figmaScreenHeight;
    wRatio = MediaQuery.sizeOf(context).width / figmaScreenWidth;
  }
}
