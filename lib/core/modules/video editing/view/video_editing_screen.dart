import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/modules/video%20editing/widgets/video_editing_action_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoEditingScreen extends StatelessWidget {
  const VideoEditingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.w),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSpacing.getHeight(height: AppSizes.spaceBtwSections * 1.5.h),

              /// Row Containing Back Icon + Undo Icon + Redo Icon + Crop Icon + Next Button
              VideoEditingActionButtons(),

              AppSpacing.getHeight(height: AppSizes.spaceBtwSections / 1.5.h),

              /// Video
              Image.asset(
                AppAssets.videoRecordingImage,
                height: 552.h,
                fit: BoxFit.fill,
                width: double.infinity,
              ),

              AppSpacing.getHeight(height: AppSizes.spaceBtwSections.h),

              /// Video Cropped Portion
              Image.asset(AppAssets.videoCroping),

              AppSpacing.getHeight(height: AppSizes.spaceBtwItems),

              /// Cropped Video Duration
              Expanded(child: Image.asset(AppAssets.videoDuration)),

            ],
          ),
        ),
      ),
    );
  }
}

