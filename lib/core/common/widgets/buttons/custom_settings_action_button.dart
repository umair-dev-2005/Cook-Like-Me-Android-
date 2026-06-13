import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSettingsActionButton extends StatelessWidget {
  final String actionButtonTitle;
  final bool isNotification;

  final Widget? child;

  const CustomSettingsActionButton({
    super.key,
    this.isNotification = false,
    this.child,
    required this.actionButtonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isNotification
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    actionButtonTitle,
                    style: AppTextStyles.titleLargeTextStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: AppSizes.largeFontSize,
                    ),
                  ),
                  child ?? SizedBox.shrink(),
                ],
              )
            : Text(
                actionButtonTitle,
                style: AppTextStyles.titleLargeTextStyle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: AppSizes.largeFontSize,
                ),
              ),

        AppSpacing.getHeight(height: AppSizes.spaceBtwItems / 1.4.h),

        Divider(color: Colors.grey.withValues(alpha: .6)),
        AppSpacing.getHeight(height: AppSizes.spaceBtwItems/2.h),
      ],
    );
  }
}
