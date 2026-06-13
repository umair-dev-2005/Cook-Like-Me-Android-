import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/custom_stat_counter.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/routes/route_names.dart';
import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class MyProfileStatCounter extends StatelessWidget {
  const MyProfileStatCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        /// Total Posts
        CustomStatCounter(title: "200K", subTitle: AppTexts.posts),

        AppSpacing.getWidth(width: AppSizes.spaceBtwItems * 2.w),

        /// Total Followers
        GestureDetector(
            onTap:(){
              Get.toNamed(RouteNames.connectionScreen);
            },child: CustomStatCounter(title: "300M", subTitle: AppTexts.followers)),

        AppSpacing.getWidth(width: AppSizes.spaceBtwItems * 2.w),

        /// Total Following
        GestureDetector(
            onTap:(){
              Get.toNamed(RouteNames.connectionScreen);
            },child: CustomStatCounter(title: "30M", subTitle: AppTexts.following)),
      ],
    );
  }
}
