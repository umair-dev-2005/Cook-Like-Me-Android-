import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/containers/custom_circular_image_container.dart';
import 'package:cook_like_me/core/common/widgets/containers/custom_rounded_container.dart';
import 'package:cook_like_me/core/common/widgets/images/custom_app_logo.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReelsVideoDetail extends StatelessWidget {
  const ReelsVideoDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left:AppSizes.paddingMedium.w),
      child: Column(
        children: [
          Spacer(),
          Row(
            children: [
              /// User Image
              CustomCircularImageContainer(
                width: 60.w,
                height: 60.h,
                imagePath: AppAssets.userImage,
                borderColor: null,
              ),
              AppSpacing.getWidth(width: 12.h),

              /// User Name
              SizedBox(
                width: 120.w,
                child: Text(
                  "Umair Rasheed",
                  style: AppTextStyles.titleLargeTextStyle.copyWith(
                    fontSize: AppSizes.mediumFontSize,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              AppSpacing.getWidth(width: 12.h),

              /// Follow Button
              CustomRoundedContainer(
                width: 60.w,
                height: 24.h,
                borderColor: AppColors.white,
                borderRadius: AppSizes.borderRadiusXXSmall - 3,
                child: Center(
                  child: Text(
                    AppTexts.follow,
                    style: AppTextStyles.captionTextStyle.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: [
              SizedBox(
                width: 300.w,
                child: Text(AppTexts.feedVideoDescription,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: AppSizes.largeFontSize
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              AppSpacing.getWidth(width: 16.w),
              CustomAppLogo()
            ],
          ),

          AppSpacing.getHeight(height: 20.h,)

        ],
      ),
    );
  }
}
