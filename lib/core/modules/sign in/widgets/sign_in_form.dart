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
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(AppTexts.signInScreenTitle, style: AppTextStyles.displayTextStyle),

        AppSpacing.getHeight(height: AppSizes.spaceBtwSections.h),

        /// Email/ UserName Text Field
        CustomTextFormField(
          keyboardType: TextInputType.emailAddress,
          showPrefixIcon: true,
          prefixIconPath: AppAssets.emailIcon,
          hintText: AppTexts.emailAndUsername,
        ),

        AppSpacing.getHeight(height: AppSizes.spaceBtwFields.h),

        /// Password Text Form Field
        CustomTextFormField(
          keyboardType: TextInputType.text,
          showPrefixIcon: true,
          prefixIconPath: AppAssets.passwordIcon,
          hintText: AppTexts.password,
          showSuffixIcon: true,
          isPasswordField: true,
        ),

        AppSpacing.getHeight(height: AppSizes.spaceBtwItems / 4.h),

        /// Forgot Password
        InkWell(
          onTap: () {
            Get.toNamed(RouteNames.resetPasswordScreen);
          },
          child: SizedBox(
            width: double.infinity,
            child: Text(
              AppTexts.forgetPassword,
              style: AppTextStyles.navigationTextStyle.copyWith(
                fontSize: AppSizes.mediumFontSize + 1,
              ),
              textAlign: TextAlign.end,
            ),
          ),
        ),

        AppSpacing.getHeight(height: AppSizes.spaceBtwSections * 2),

        /// Sign In Button
        CustomElevatedButton(
          backgroundColor: AppColors.secondaryColor,
          width: AppSizes.elevatedButtonWidth.w,
          height: AppSizes.elevatedButtonHeight.h,
          child: Text(
            AppTexts.signInButtonTitle,
            style: AppTextStyles.elevatedButtonTextStyle,
          ),
          onPressed: (){
            Get.offNamed(RouteNames.homeScreen);
          },
        ),
      ],
    );
  }
}
