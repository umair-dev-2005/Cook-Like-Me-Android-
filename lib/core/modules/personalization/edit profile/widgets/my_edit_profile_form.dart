import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/text%20fields/custom_text_form_fields.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'my_edit_profile_save_button.dart';


class MyEditProfileForm extends StatelessWidget {
  const MyEditProfileForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.defaultSpace.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Name Text Form Field
          Text(
            AppTexts.name,
            style: AppTextStyles.titleSmallTextStyle.copyWith(
              color: Color(0xff747679),
              fontSize: AppSizes.xLargeFontSize.sp,
            ),
          ),

          CustomTextFormField(
            keyboardType: TextInputType.name,
            isEditProfile: true,
            hintText: AppTexts.dummyUser2,
          ),

          AppSpacing.getHeight(height: AppSizes.spaceBtwFields.h),

          // Username Text Field
          Text(
            AppTexts.userName,
            style: AppTextStyles.titleSmallTextStyle.copyWith(
              color: AppColors.neutralGray,
              fontSize: AppSizes.xLargeFontSize.sp,
            ),
          ),
          CustomTextFormField(
            keyboardType: TextInputType.name,
            isEditProfile: true,
            hintText: AppTexts.dummyUserName,
          ),

          AppSpacing.getHeight(height: AppSizes.spaceBtwFields.h),

          // Description Text Field
          Text(
            AppTexts.description,
            style: AppTextStyles.titleSmallTextStyle.copyWith(
              color: AppColors.neutralGray,
              fontSize: AppSizes.xLargeFontSize.sp,
            ),
          ),
          CustomTextFormField(
            keyboardType: TextInputType.text,
            isEditProfile: true,
            hintText: AppTexts.dummyUserDescription,
          ),

          AppSpacing.getHeight(
            height: AppSizes.spaceBtwSections * 3.h,
          ),

          /// Save Button
          MyEditProfileSaveButton(),

        ],
      ),
    );
  }
}
