import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/modules/onboarding/widgets/onboarding_page_indicator_with_text_button.dart';
import 'package:cook_like_me/core/modules/onboarding/widgets/onboarding_page_view.dart';
import 'package:cook_like_me/core/modules/onboarding/widgets/onboarding_sub_title.dart';
import 'package:cook_like_me/core/modules/onboarding/widgets/onboarding_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
   const OnBoardingScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          /// On-Boarding Image
          OnBoardingPageView(),

          /// Column Containing Title , Subtitle And Container
          /// With Page Indicator And Text Button
          Column(
            children: [

              // Spacer To Cover Empty Space
              Spacer(),

              // OnBoarding Title
              OnBoardingTitle(),
              AppSpacing.getHeight(height: AppSizes.spaceBtwItems/3.h),

              // OnBoarding Subtitle
              OnBoardingSubTitle(),

              AppSpacing.getHeight(height: AppSizes.spaceBtwItems.h),

              // Container Containing Page Indicator With Text Button
              OnBoardingPgeIndicatorWithTextButton(),
            ],
          ),
        ],
      ),
    );
  }
}

