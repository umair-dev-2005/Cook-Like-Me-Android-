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

class ResetPasswordScreenForm extends StatelessWidget {
  const ResetPasswordScreenForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        /// Email Text Form Field
        CustomTextFormField(
          keyboardType: TextInputType.emailAddress,
          showPrefixIcon: true,
          prefixIconPath: AppAssets.emailIcon,
          hintText: AppTexts.email,
        ),

        AppSpacing.getHeight(height: AppSizes.spaceBtwSections),

        /// Next Button
        CustomElevatedButton(
          backgroundColor: AppColors.secondaryColor,
          width: AppSizes.elevatedButtonWidth.w,
          height:AppSizes.elevatedButtonHeight.h,
          child: Text(
            AppTexts.next,
            style: AppTextStyles.elevatedButtonTextStyle,
          ),
          onPressed: (){
            Get.toNamed(RouteNames.otpVerificationScreen);
          },
        ),
      ],
    );
  }
}
