import 'package:cook_like_me/core/common/widgets/text%20fields/custom_text_field.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class StatusTextField extends StatelessWidget {
  const StatusTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.w),
      child: CustomTextField(
        width: double.infinity,
        height: 45,
        borderRadius: AppSizes.borderRadiusXXXLarge,
        hintTextColor: AppColors.white,
        hintText: AppTexts.typeYourMessage,
        suffixIcon: AppAssets.sendMessage,
      ),
    );
  }
}
