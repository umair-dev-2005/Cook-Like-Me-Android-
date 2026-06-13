import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfileHeading extends StatelessWidget {
  const UserProfileHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: AppSizes.paddingMedium.w),
      width: double.infinity,
      height: 40.h,
      color: AppColors.charcoalGray,
      child: Row(
        children: [
          Text(AppTexts.recentPosts, style: AppTextStyles.supportingTextStyle),
        ],
      ),
    );
  }
}
