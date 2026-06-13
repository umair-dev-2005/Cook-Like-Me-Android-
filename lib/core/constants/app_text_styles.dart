import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'app_sizes.dart';

class AppTextStyles{

  /// Title Text Styles
  static TextStyle titleLargeTextStyle = TextStyle(
    fontSize: AppSizes.xXLargeFontSize.sp,
    fontFamily: 'Inter',
    fontWeight:FontWeight.w600,
    color: AppColors.white
  );


  static TextStyle titleSmallTextStyle = TextStyle(
    fontSize: AppSizes.smallFontSize,
    fontWeight: FontWeight.w400,
    fontFamily: "Inter",
    color:AppColors.white
  );

  /// SubTitle Text Styles
  static TextStyle subTitleLargeTextStyle = TextStyle(
    fontSize: AppSizes.largeFontSize.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    color:AppColors.white
  );


  /// Body TeXT Style
  static const TextStyle bodySmallTextStyle = TextStyle(
    fontSize: AppSizes.largeFontSize,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w300,
    color:AppColors.white
  );
  /// Display Text Styles
 static TextStyle displayTextStyle = TextStyle(
   fontSize: AppSizes.displayFontSize.sp,
   fontFamily: "Inter",
   fontWeight: FontWeight.w600,
   color:AppColors.white
 );

 /// Navigation Text Style
  static TextStyle navigationTextStyle = TextStyle(
    fontSize: AppSizes.xXLargeFontSize.sp,
    fontFamily: "Inter",
    fontWeight: FontWeight.w400,
    color:AppColors.white
  );

  static const TextStyle navigationSmallTextStyle = TextStyle(
    fontSize: AppSizes.smallFontSize,
    fontFamily: "Inter",
    fontWeight: FontWeight.w500,
    color:AppColors.white
  );

 /// Hint Text Styles
 static TextStyle hintTextStyle = TextStyle(
   fontSize: AppSizes.mediumFontSize,
   fontWeight: FontWeight.w400,
   fontFamily: "Inter",
   color:AppColors.hintTextColor,

 );

 /// Elevated Button Text Style
 static TextStyle elevatedButtonTextStyle = TextStyle(
   fontSize: AppSizes.xLargeFontSize.sp,
   fontFamily: "Inter",
   fontWeight: FontWeight.w600,
   color:AppColors.white
 );

 /// Supporting Text Style
 static TextStyle supportingTextStyle = TextStyle(
   fontSize: AppSizes.xXLargeFontSize.sp,
   fontFamily: "SF PRO Rounded",
   fontWeight: FontWeight.w400,
   color:AppColors.white
 );

 /// Tab Bar Text Styles
 static const TextStyle tabBarTextStyle = TextStyle(
   fontSize: AppSizes.mediumFontSize,
   fontFamily: "Inter",
   fontWeight: FontWeight.w400,
   color:Color(0xff757575)
 );

 /// Caption Text Styles
 static const TextStyle captionTextStyle = TextStyle(
   fontSize: AppSizes.smallFontSize,
   fontFamily: "Inter",
   fontWeight: FontWeight.w400,
   color:AppColors.secondaryColor
 );

 /// Action Text Styles
 static TextStyle actionTextStyle = TextStyle(
   fontSize: AppSizes.mediumFontSize,
   fontFamily: "Inter",
   fontWeight: FontWeight.w400,
   color:AppColors.secondaryColor,
 );

}