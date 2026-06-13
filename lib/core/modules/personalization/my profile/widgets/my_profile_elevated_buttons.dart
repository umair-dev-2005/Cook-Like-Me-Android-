import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/buttons/custom_elevated_button.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class MyProfileElevatedButtons extends StatelessWidget {
  const MyProfileElevatedButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        /// Edit Profile Elevated Button
        CustomElevatedButton(
          width: 144.w,
          backgroundColor: AppColors.buttonSecondaryColor,
          child: Text(
            AppTexts.editButtonTitle,
            style: AppTextStyles.elevatedButtonTextStyle,
          ),
          onPressed: () {
            Get.toNamed(RouteNames.editProfileScreen);
          },
        ),

        AppSpacing.getWidth(width: AppSizes.spaceBtwItems * 1.8.w),

        /// Share Profile Elevated Button
        CustomElevatedButton(
          width: 137.w,
          backgroundColor: AppColors.buttonPrimaryColor,
          child: Text(
            AppTexts.shareButtonTitle,
            style: AppTextStyles.elevatedButtonTextStyle,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
