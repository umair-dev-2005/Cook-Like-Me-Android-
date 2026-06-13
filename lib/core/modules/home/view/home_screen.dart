import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/modules/home/widgets/home_screen_tab_bar.dart';
import 'package:cook_like_me/core/modules/home/widgets/home_screen_video.dart';
import 'package:cook_like_me/core/modules/home/widgets/home_search_icon.dart';
import 'package:cook_like_me/core/modules/map/viwe/map_screen.dart';
import 'package:cook_like_me/core/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            /// Tab Bar
            HomeTabBar(),

            SizedBox(width: AppSizes.spaceBtwItems.w),

            /// Search Icon
            GestureDetector(
                onTap:(){
                  Get.toNamed(RouteNames.searchScreen);
                },child: HomeSearchIcon()),
            SizedBox(width: AppSizes.spaceBtwItems*2.8.w),
          ],
        ),

        /// Tab Bar View
        body: TabBarView(
          children: [
            MapScreen(),
            HomeScreenVideo(),
            HomeScreenVideo()
          ],
        ),

        /// Bottom Nav Bar
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.primaryColor,
          selectedItemColor: AppColors.secondaryColor,
          currentIndex: currentIndex,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AppAssets.homeIcon),
              label: "Settings",
              //backgroundColor: Colors.yellow,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.exploreIcon),
              label: "Settings",
              //backgroundColor: Colors.orange,

            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.inboxIcon),
              label: "Settings",
              //backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAssets.passwordIcon),
              label: "Settings",
              //backgroundColor: Colors.pink,
            ),
          ],
          onTap: (int index){
            setState(() {
              currentIndex = index ;
            });
          },
        ),
        /// Floating Action Button
        // floatingActionButton: Align(
        //   alignment: Alignment.bottomCenter,
        //   child: CircleAvatar(
        //       radius: 30.r,
        //       backgroundColor: AppColors.secondaryColor,
        //       child: Icon(Icons.add,color:AppColors.primaryColor),
        //     ),
        // ),
        ),
      );
  }
}
