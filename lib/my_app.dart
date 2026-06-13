import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'core/routes/app_routes.dart';
import 'core/routes/route_names.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:Size(393,852),
      minTextAdapt:true,
      splitScreenMode:true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.primaryColor,
        ),
        title: "Cook Like Me",
        getPages: AppRoutes.screens,
        initialRoute:RouteNames.myProfileScreen,
        defaultTransition: Transition.leftToRight,
        transitionDuration:Duration(microseconds: 2000)

      ),
    );
  }
}
