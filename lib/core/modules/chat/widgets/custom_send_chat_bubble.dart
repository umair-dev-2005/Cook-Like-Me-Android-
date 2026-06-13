import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSendChatBubble extends StatelessWidget {
  final String sendMessage ;
  const CustomSendChatBubble({super.key,
  required this.sendMessage});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: AppSizes.paddingMedium.h),
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.paddingSmall * 2.w,
          //vertical: AppSizes.paddingSmall * 1.5.h,
        ),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width * .75,
        ),
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppSizes.borderRadiusXSmall.r),
            bottomRight: Radius.circular(AppSizes.borderRadiusXSmall.r),
            bottomLeft: Radius.circular(AppSizes.borderRadiusXSmall.r),
          ),
        ),
        child: Text(
          sendMessage,
          style: AppTextStyles.bodySmallTextStyle.copyWith(
            fontWeight: FontWeight.w400,
          ),
          maxLines: null,
        ),
      ),
    );
  }
}
