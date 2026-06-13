import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/modules/sign%20up/widgets/sign_up_footer.dart';
import 'package:cook_like_me/core/modules/sign%20up/widgets/sign_up_form.dart';
import 'package:cook_like_me/core/modules/sign%20up/widgets/sign_up_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: AppSpacing.getScreenPadding(),
          child: Column(
            children: [
              AppSpacing.getHeight(height: 8.h),

              /// Header [ App Logo ]
              SignUpHeader(),

              AppSpacing.getHeight(height: AppSizes.spaceBtwSections * 1.3),

              /// Sign Up Form [ Sign Up Title + Text Form Fields + Sign Up Button ]
              SignUpForm(),

              AppSpacing.getHeight(height: AppSizes.spaceBtwItems),

              /// Footer [ Already Have An Account + Sign In Text Button ]
              SignUpFooter(),
            ],
          ),
        ),
      ),
    );
  }
}



