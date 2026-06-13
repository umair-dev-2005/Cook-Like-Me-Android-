import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/text%20fields/custom_text_field.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ChatTextField extends StatelessWidget {
  const ChatTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Spacer(),

          CustomTextField(
            width: 345,

            borderRadius: AppSizes.borderRadiusSmall.r,
            hintTextColor: AppColors.white,
            hintText: AppTexts.typeYourMessage,
            suffixIcon: AppAssets.sendMessage,
            maxLines: null,
          ),

          AppSpacing.getHeight(height: AppSizes.spaceBtwItems/5.h)
        ],
      ),
    );
  }
}
