import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPVerificationPinField extends StatelessWidget {
  const OTPVerificationPinField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialPinFormField(
      length: AppTexts.pinCodeFormFieldCount,
      keyboardType: TextInputType.phone,
      hintWidget: Text("*",style: AppTextStyles.displayTextStyle,),
      theme:MaterialPinTheme(
          cursorColor: AppColors.secondaryColor,
          cellSize: Size(65.w,70.h),
          fillColor: AppColors.textFormFieldPrimaryBgColor,
          focusedFillColor:AppColors.textFormFieldPrimaryBgColor,
          filledFillColor: AppColors.textFormFieldPrimaryBgColor,
          borderColor: AppColors.white,
          focusedBorderColor: AppColors.white,
          filledBorderColor: AppColors.white,
          textStyle: AppTextStyles.displayTextStyle
      ),
    );
  }
}
