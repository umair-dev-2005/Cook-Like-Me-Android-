import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomHomeActionButton extends StatelessWidget {
  final String actionButtonIcon;
  final String counts;
  final double width;
  final double height;
  final VoidCallback? onTap;
  final double? spaceBelowCount;

  const CustomHomeActionButton({
    super.key,
    required this.actionButtonIcon,
    required this.width,
    required this.height,
    required this.counts,
    this.onTap,
    this.spaceBelowCount,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.w,

      height: 90.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// Action Icon
          GestureDetector(
            onTap: onTap,
            child: SvgPicture.asset(
              actionButtonIcon,
              width: width.w,
              height: height.h,
            ),
          ),

           //AppSpacing.getHeight(height: 8.h),

          ///  Counts
          Text(
            counts,
            style: AppTextStyles.captionTextStyle.copyWith(
              color: AppColors.white,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          AppSpacing.getHeight(height:  spaceBelowCount ?? 12.h),
        ],
      ),
    );
  }
}
