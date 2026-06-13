import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/text%20fields/custom_text_field.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class PostCreationTextFields extends StatelessWidget {
  const PostCreationTextFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //  Description Text Field
        CustomTextField(
          width: 255.w,
          height: 132.h,
          title: AppTexts.description,
          borderRadius: AppSizes.borderRadiusXXSmall.r,
          hintTextColor: AppColors.secondaryColor,
          maxLines: null,
        ),

        AppSpacing.getHeight(height: AppSizes.spaceBtwItems * 1.7.h),

        /// Tags Text Field
        CustomTextField(
          width: 345.w,
          height: 62.h,
          title: AppTexts.tags,
          borderRadius: AppSizes.borderRadiusXXSmall,
          hintTextColor: AppColors.secondaryColor,
        ),

        AppSpacing.getHeight(height: AppSizes.spaceBtwItems * 1.7.h),

        /// Location Text Field
        CustomTextField(
          width: 345.w,
          height: 60.h,
          title: AppTexts.location,
          borderRadius: AppSizes.borderRadiusXXSmall,
          hintTextColor: AppColors.secondaryColor,
         suffixIcon: AppAssets.locationIcon,
        ),

      ],
    );
  }
}
