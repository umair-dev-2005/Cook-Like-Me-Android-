import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/modules/home/widgets/home_video_action_buttons.dart';
import 'package:cook_like_me/core/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_video_description.dart';

class HomeScreenVideo extends StatelessWidget {
  const HomeScreenVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Video Image
          Image.asset(
            AppAssets.feedImage,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),

          /// Column Containing [ Like , Comment , Share , Save Ans User Info ]
          HomeVideoActionButtons(),

          /// Video Description
          HomeVideoDescription(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(RouteNames.videoRecordingScreen);
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
    );
  }
}
