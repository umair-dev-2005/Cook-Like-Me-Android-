import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';


class OTPVerificationFooter extends StatelessWidget {
  const OTPVerificationFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(AppTexts.didNotReceive,
            style: AppTextStyles.supportingTextStyle
        ),

        AppSpacing.getHeight(height: AppSizes.spaceBtwItems/4),
        Text(
          AppTexts.resendCode,
          style: AppTextStyles.supportingTextStyle.copyWith(color: AppColors.secondaryColor),
        )
      ],
    );
  }
}
