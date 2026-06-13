import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/buttons/custom_elevated_button.dart';
import 'package:cook_like_me/core/common/widgets/text%20fields/custom_text_form_fields.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Sign Up Screen Title
        Text(
          AppTexts.signUpScreenTitle,
          style: AppTextStyles.displayTextStyle,
        ),

        AppSpacing.getHeight(height: AppSizes.spaceBtwSections / 1.5),

        /// Username Text Form Field
        CustomTextFormField(
          keyboardType: TextInputType.name,
          showPrefixIcon: true,
          prefixIconPath: AppAssets.userIcon,
          hintText: AppTexts.userName,
        ),

        AppSpacing.getHeight(height: AppSizes.spaceBtwItems),

        /// Email Text Form Field
        CustomTextFormField(
          keyboardType: TextInputType.emailAddress,
          showPrefixIcon: true,
          prefixIconPath: AppAssets.emailIcon,
          hintText: AppTexts.email,
        ),

        AppSpacing.getHeight(height: AppSizes.spaceBtwItems),

        /// Password Text Form Field
        CustomTextFormField(
          keyboardType: TextInputType.text,
          showPrefixIcon: true,
          prefixIconPath: AppAssets.passwordIcon,
          showSuffixIcon: true,
          isPasswordField: true,
          hintText: AppTexts.password,
        ),

        AppSpacing.getHeight(height: AppSizes.spaceBtwItems),

        /// Confirm Password Text Form Field
        CustomTextFormField(
          keyboardType: TextInputType.text,
          showPrefixIcon: true,
          prefixIconPath: AppAssets.passwordIcon,
          hintText: AppTexts.confirmPassword,
          isPasswordField: true,
          showSuffixIcon: true,
        ),

        AppSpacing.getHeight(height: AppSizes.spaceBtwSections),

        /// Sign Up Button
        CustomElevatedButton(
          backgroundColor: AppColors.secondaryColor,
          width: AppSizes.elevatedButtonWidth,
          height: AppSizes.elevatedButtonHeight,
          child: Text(AppTexts.signUpButtonTitle,style: AppTextStyles.elevatedButtonTextStyle,),
          onPressed: (){
            Get.offNamed(RouteNames.homeScreen);
          },
        ),

      ],
    );
  }
}
