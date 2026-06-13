import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class VideoRecordingScreen extends StatelessWidget {
  const VideoRecordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// ....... [ First Layer ].........Camera Recording Video
          Image.asset(
            AppAssets.videoRecordingImage,
            width: double.infinity,
            height:double.infinity,
            fit: BoxFit.cover,
          ),

          ///........ [Second Layer]...... Video Recording Progress + Upload Icon
          Column(
            children: [
              Spacer(),
              Padding(
                padding: EdgeInsets.only(left: AppSizes.paddingXLarge * 7.8.w),
                child: Row(
                  children: [
                    // Video Recording Progress
                    SvgPicture.asset(AppAssets.videoRecordingProgress),

                    AppSpacing.getWidth(width: AppSizes.spaceBtwSections * 2.w),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteNames.videoEditingScreen);
                      },
                      child: Column(
                        children: [
                          SvgPicture.asset(AppAssets.uploadIcon),
                          Text(
                            AppTexts.upload,
                            style: AppTextStyles.navigationSmallTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              AppSpacing.getHeight(height: AppSizes.spaceBtwItems / 2.h),

              ///...........[Third Layer] Container Containing Texts [Camera + Live]
              Container(
                width: double.infinity,
                height: 64.h,
                color: AppColors.primaryColor.withValues(alpha: .7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppTexts.camera,
                      style: AppTextStyles.captionTextStyle.copyWith(
                        color: AppColors.white,
                      ),
                    ),

                    AppSpacing.getWidth(width: AppSizes.spaceBtwItems.w),
                    Text(
                      AppTexts.live,
                      style: AppTextStyles.supportingTextStyle.copyWith(
                        fontSize: AppSizes.mediumFontSize,
                        color: AppColors.hintTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
