import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/modules/reset%20password/widgets/reset_password_screen_footer.dart';
import 'package:cook_like_me/core/modules/reset%20password/widgets/reset_password_screen_form.dart';
import 'package:cook_like_me/core/modules/reset%20password/widgets/reset_password_screen_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: AppSpacing.getScreenPadding(),
          child: Column(
            children: [
              AppSpacing.getHeight(height: 124.h),

              /// Header [Reset Screen Title + Subtitle ]
              ResetPasswordScreenHeader(),


              AppSpacing.getHeight(height: AppSizes.spaceBtwSections * 2),

              /// Reset Password Form Field [Email Text Form Field] + Next Button
              ResetPasswordScreenForm(),

              AppSpacing.getHeight(height: AppSizes.spaceBtwItems),

              /// Footer [ Back to + Sign In Button
              ResetPasswordScreenFooter(),
            ],
          ),
        ),
      ),
    );
  }
}


