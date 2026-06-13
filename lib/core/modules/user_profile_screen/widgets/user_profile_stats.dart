import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/custom_stat_counter.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfileStats extends StatelessWidget {
  const UserProfileStats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        CustomStatCounter(title: "2345K", subTitle: "Followers"),

        AppSpacing.getWidth(width: AppSizes.spaceBtwItems * 2.w),

        CustomStatCounter(title: '222K', subTitle: 'Posts',),

        AppSpacing.getWidth(width: AppSizes.spaceBtwItems * 2.w),

        CustomStatCounter(title: "234.5K", subTitle:"Following"),

      ],
    );
  }
}
