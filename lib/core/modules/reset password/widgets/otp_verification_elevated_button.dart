import 'package:cook_like_me/core/common/widgets/buttons/custom_elevated_button.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OTPVerificationElevatedButton extends StatelessWidget {
  const OTPVerificationElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      backgroundColor: AppColors.secondaryColor,
      width: AppSizes.elevatedButtonWidth.w,
      onPressed: (){
        Get.toNamed(RouteNames.createNewPasswordScreen);
      },
      child: Text(AppTexts.next,style: AppTextStyles.elevatedButtonTextStyle,
      ),
    );
  }
}
