import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/routes/route_names.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInFooter extends StatelessWidget {
  const SignInFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: AppTexts.doNotHaveAccount,
            style: AppTextStyles.supportingTextStyle,
          ),
          WidgetSpan(
            child: AppSpacing.getWidth(
              width: AppSizes.spaceBtwItems.w / 1.6,
            ),
          ),
          TextSpan(
            text: AppTexts.signUpButtonTitle,
            style: AppTextStyles.navigationTextStyle.copyWith(
              fontSize: AppSizes.xXLargeFontSize - 1,
              color: AppColors.secondaryColor,
            ),
            recognizer: TapGestureRecognizer()..onTap=(){
              Get.toNamed(RouteNames.signUpScreen);
            }
          ),
        ],
      ),
    );
  }
}
