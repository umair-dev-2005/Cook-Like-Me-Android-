import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';


class OTPVerificationHeader extends StatelessWidget {
  const OTPVerificationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppTexts.otpVerificationScreenTitle,
          style: AppTextStyles.titleLargeTextStyle,
        ),

        AppSpacing.getHeight(height: AppSizes.spaceBtwItems/2),
        Text(
          AppTexts.otpVerificationScreenSubTitle,
          style: AppTextStyles.subTitleLargeTextStyle,
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
      ],
    );
  }
}
