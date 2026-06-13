import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/modules/reset%20password/widgets/otp_verification_elevated_button.dart';import 'package:cook_like_me/core/modules/reset%20password/widgets/otp_verification_footer.dart';
import 'package:cook_like_me/core/modules/reset%20password/widgets/otp_verification_header.dart';
import 'package:cook_like_me/core/modules/reset%20password/widgets/otp_verification_pin_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width:double.infinity,
        child: Column(
          children: [
            AppSpacing.getHeight(height: 104.h),

            /// Header [ Screen Title + SubTitle ]
            OTPVerificationHeader(),

            AppSpacing.getHeight(height: AppSizes.spaceBtwSections),

            /// Body
            OTPVerificationPinField(),

            AppSpacing.getHeight(height: AppSizes.spaceBtwSections),

            OTPVerificationElevatedButton(),

            AppSpacing.getHeight(height: AppSizes.spaceBtwItems),

            /// Footer
            OTPVerificationFooter(),
          ],
        ),
      ),
    );
  }
}
