import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/modules/reels/widgets/reels_action_buttons.dart';
import 'package:cook_like_me/core/modules/reels/widgets/reels_video_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,

      /// App Bar
      appBar: AppBar(
        backgroundColor: AppColors.black,
        title: Text(
          AppTexts.reelsScreenTitle,
          style: AppTextStyles.titleLargeTextStyle,
        ),
        leading: Transform.scale(
          scale: .3,
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: SvgPicture.asset(AppAssets.backIcon),
          ),
        ),
      ),

      /// Body
      body: Stack(
        children: [

          ///........[FIRST LAYER]............. Video
          Image.asset(
            AppAssets.reelImage,
            width: double.infinity.w,
            fit: BoxFit.cover,
          ),

          ///.............[SECOND LAYER]............Back Icon + Screen Title
          ReelsActionButtons(),


          ///.................[THIRD LAYER]........... Video All Details
          ReelsVideoDetail(),
        ],
      ),
    );
  }
}


