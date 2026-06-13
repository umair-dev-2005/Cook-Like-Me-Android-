import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/buttons/custom_elevated_button.dart';
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

class PostCreationButtons extends StatelessWidget {
  const PostCreationButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        // Deny Elevated Button
        Expanded(
          child: CustomElevatedButton(
            backgroundColor: Color(0xff393532),
            child: Row(
              children: [
                SvgPicture.asset(AppAssets.trashIcon),
                AppSpacing.getWidth(
                  width: AppSizes.spaceBtwItems / 2.w,
                ),
                Text(
                  AppTexts.deny,
                  style: AppTextStyles.elevatedButtonTextStyle,
                ),
              ],
            ),
            onPressed: () {},
          ),
        ),

        AppSpacing.getWidth(width: AppSizes.spaceBtwItems.w),

        // Post Elevated Button
        Expanded(
          child: CustomElevatedButton(
            backgroundColor: AppColors.buttonPrimaryColor,
            child: Row(
              children: [
                SvgPicture.asset(
                  AppAssets.sendMessage,
                  colorFilter: ColorFilter.mode(AppColors.white,BlendMode.srcIn ),
                  //color: AppColors.white,
                ),
                AppSpacing.getWidth(
                  width: AppSizes.spaceBtwItems / 2.w,
                ),
                Text(
                  AppTexts.post,
                  style: AppTextStyles.elevatedButtonTextStyle,
                ),
              ],
            ),
            onPressed: () {
              Get.offNamed(RouteNames.homeScreen);
            },
          ),
        ),
      ],
    );
  }
}
