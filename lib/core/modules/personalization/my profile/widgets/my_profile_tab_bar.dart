import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProfileTabBar extends StatelessWidget {
  const MyProfileTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40.h,
      color: AppColors.charcoalGray,
      child: TabBar(
          indicatorColor: AppColors.secondaryColor,
          dividerColor: AppColors.transparent,
          labelStyle: AppTextStyles.titleSmallTextStyle.copyWith(
              fontSize: AppSizes.largeFontSize.sp
          ),
          unselectedLabelColor: AppColors.white,
          tabs: [
            Tab(
              text:AppTexts.allPosts ,
            ),
            Tab(
              text: AppTexts.saved,
            ),
            Tab(
              text: AppTexts.liked,
            ),
          ]
      ),
    );
  }
}
