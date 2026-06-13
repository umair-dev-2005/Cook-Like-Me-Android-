import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/routes/route_names.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreenFooter extends StatelessWidget {
  const ResetPasswordScreenFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: AppTexts.backTo,
            style: AppTextStyles.supportingTextStyle,
          ),
          WidgetSpan(
            child: AppSpacing.getWidth(width: AppSizes.spaceBtwItems / 1.6),
          ),
          TextSpan(
            text: AppTexts.signInButtonTitle,
            style: AppTextStyles.navigationTextStyle.copyWith(
              color: AppColors.secondaryColor,
            ),
            recognizer: TapGestureRecognizer()..onTap=(){
              Get.toNamed(RouteNames.signInScreen);
            }
          ),
        ],
      ),
    );
  }
}
