import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomReceiveChatBubble extends StatelessWidget {
  final String receiveMessage ;
  const CustomReceiveChatBubble({super.key,
  required this.receiveMessage});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.paddingSmall * 2.w,
          vertical: AppSizes.paddingSmall * 1.5.h,
        ),
        decoration: BoxDecoration(
          color: AppColors.charcoalGray.withValues(alpha: .6),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(AppSizes.borderRadiusXSmall.r),
            bottomRight: Radius.circular(AppSizes.borderRadiusXSmall.r),
            bottomLeft: Radius.circular(AppSizes.borderRadiusXSmall.r),
          ),
        ),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width * .65,
        ),
        child: Text(
          receiveMessage,
          style: AppTextStyles.bodySmallTextStyle.copyWith(
            fontWeight: FontWeight.w400,
          ),
          maxLines: null,
        ),
      ),
    );
  }
}
