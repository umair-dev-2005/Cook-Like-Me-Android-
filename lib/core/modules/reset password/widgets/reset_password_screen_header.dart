import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreenHeader extends StatelessWidget {
  const ResetPasswordScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppTexts.passwordResetScreenTitle,
          style: AppTextStyles.titleLargeTextStyle,
        ),

        AppSpacing.getHeight(height: AppSizes.spaceBtwItems / 2),

        /// Reset Password Screen SubTitle
        Text(
          AppTexts.passwordResetScreenSubTitle,
          style: AppTextStyles.subTitleLargeTextStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
