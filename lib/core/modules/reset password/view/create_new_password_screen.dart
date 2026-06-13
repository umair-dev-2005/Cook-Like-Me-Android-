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

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppSpacing.getScreenPadding(),
        child: Column(
          children: [

            /// Header
            Column(
              children: [
                AppSpacing.getHeight(height: 104.h),
                Text(
                  AppTexts.createNewPasswordScreenTitle,
                  style: AppTextStyles.titleLargeTextStyle,
                ),
                AppSpacing.getHeight(height: AppSizes.spaceBtwItems),
                Text(
                  AppTexts.createNewPasswordScreenSubTitle,
                  style: AppTextStyles.subTitleLargeTextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            AppSpacing.getHeight(height: AppSizes.spaceBtwSections),

            /// Password + Confirm Password Text Form Fields
            Column(
              children: [
                CustomTextFormField(keyboardType: TextInputType.text,
                showPrefixIcon: true,
                prefixIconPath: AppAssets.passwordIcon,
                hintText: AppTexts.password,
                showSuffixIcon: true,
                isPasswordField: true,),

                AppSpacing.getHeight(height: AppSizes.spaceBtwFields),

                CustomTextFormField(
                  keyboardType: TextInputType.text,
                  showSuffixIcon: true,
                  prefixIconPath: AppAssets.passwordIcon,
                  showPrefixIcon: true,
                  hintText: AppTexts.confirmPassword,
                  isPasswordField: true,
                ),
              ],
            ),

            AppSpacing.getHeight(height: AppSizes.spaceBtwSections),

            CustomElevatedButton(
              width: AppSizes.elevatedButtonWidth.w,
              height:AppSizes.elevatedButtonHeight.h,
              backgroundColor: AppColors.secondaryColor,
              child: Text(AppTexts.next,style: AppTextStyles.elevatedButtonTextStyle,),
              onPressed: (){
                Get.toNamed(RouteNames.signInScreen);
              },
            )
          ],
        ),
      ),
    );
  }
}
