import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PostCreationHeader extends StatelessWidget {
  const PostCreationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Back icon
        GestureDetector(
            onTap:(){
              Get.back();
            },child: SvgPicture.asset(AppAssets.backIcon, width: 12.w)),

        AppSpacing.getWidth(width: AppSizes.spaceBtwItems * 2.w),

        // Text [ Post ]
        Text(AppTexts.post, style: AppTextStyles.titleLargeTextStyle),
      ],
    );
  }
}
