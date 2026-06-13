import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class StatusProgressBars extends StatelessWidget {
  const StatusProgressBars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.defaultSpace,
      ),
      child: Row(
        children: [
          Expanded(child: SvgPicture.asset(AppAssets.progressBarIon)),
          AppSpacing.getWidth(width: AppSizes.spaceBtwItems.w),
          Expanded(child: SvgPicture.asset(AppAssets.progressBarIon)),
        ],
      ),
    );
  }
}
