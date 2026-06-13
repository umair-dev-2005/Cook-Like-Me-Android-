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


class VideoEditingActionButtons extends StatelessWidget {
  const VideoEditingActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: SvgPicture.asset(AppAssets.backIcon),
        ),
        AppSpacing.getWidth(width: AppSizes.spaceBtwItems * 4.4.w),
        SvgPicture.asset(AppAssets.undoIcon),
        AppSpacing.getWidth(width: AppSizes.spaceBtwItems * 4.4.w),
        SvgPicture.asset(AppAssets.redoIcon),
        AppSpacing.getWidth(width: AppSizes.spaceBtwItems * 4.4.w),
        SvgPicture.asset(AppAssets.cropIcon),
        AppSpacing.getWidth(width: AppSizes.spaceBtwItems * 4.4.w),
        GestureDetector(
          onTap:(){
            Get.toNamed(RouteNames.postCreationScreen);
          },
          child: Text(
            AppTexts.next,
            style: AppTextStyles.navigationTextStyle.copyWith(
              color: AppColors.secondaryColor,
            ),
          ),
        ),
      ],
    );
  }
}

