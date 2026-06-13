import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/buttons/custom_elevated_button.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UserProfileElevatedButtons extends StatelessWidget {
  final String userName ;
  const UserProfileElevatedButtons({
    super.key,
    required this.userName
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        // Follow  Button
        CustomElevatedButton(
          width: 137.w,
          backgroundColor: AppColors.buttonSecondaryColor,
          child: Text(
            AppTexts.follow,
            style: AppTextStyles.elevatedButtonTextStyle,
          ),
          onPressed: () {},
        ),

        AppSpacing.getWidth(width: AppSizes.spaceBtwItems*1.8.w),

        // Message Button
        CustomElevatedButton(
          width: 137.w,
          backgroundColor: AppColors.buttonPrimaryColor,
          child: Text(
            AppTexts.messageButtonTitle,
            style: AppTextStyles.elevatedButtonTextStyle,
          ),
          onPressed: (){
            Get.toNamed(RouteNames.chatScreen,
            arguments: userName);
          },
        ),
      ],
    );
  }
}
