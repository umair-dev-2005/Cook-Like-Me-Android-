import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/images/custom_app_logo.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class VideoPreviewScreen extends StatelessWidget {
  const VideoPreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          /// Video Image
          Image.asset(AppAssets.videoRecordingImage, width: double.infinity),

          /// Column Containing Back Arrow + Text ( Post) + Video Description + App Logo
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 40.h),

                // Back Arrow + Text ( Post )
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.paddingXLarge.w,
                  ),
                  width: double.infinity,
                  height: 40.h,
                  color: AppColors.primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(AppAssets.backIcon),
                      Text(
                        AppTexts.post,
                        style: AppTextStyles.titleLargeTextStyle.copyWith(
                          color: AppColors.secondaryColor,
                        ),
                      ),
                    ],
                  ),
                ),

                Spacer(),

                /// Video Pause Icon
                SvgPicture.asset(AppAssets.videoPauseAndPlayIcon),

                Spacer(),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: AppSizes.paddingXLarge),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          AppTexts.feedVideoDescription,
                          style: AppTextStyles.subTitleLargeTextStyle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      CustomAppLogo(),
                    ],
                  ),
                ),

                AppSpacing.getHeight(height: AppSizes.spaceBtwItems*1.5.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
