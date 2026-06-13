import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/modules/onboarding/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPgeIndicatorWithTextButton extends StatelessWidget {
   OnBoardingPgeIndicatorWithTextButton({
    super.key,
  });

  /// Finding Instance of OnBoardingController Class
  final controller = OnBoardingController.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.onBoardingContainerBgColor,
      width: AppSizes.onBoardingContainerWidth.w,
      height: AppSizes.onBoardingContainerHeight.h,
      padding: EdgeInsets.symmetric(horizontal: 33.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          // Smooth Page Indicator
          SmoothPageIndicator(
            count: AppTexts.onBoardingDotCounts,
            controller: controller.pageController ,
            effect: ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              dotColor: AppColors.white,
              activeDotColor: AppColors.secondaryColor,
            ),
          ),

          // Text Button
          TextButton(
            child: Obx(
              ()=> Text(
                controller.currentPage.value < 2 ? AppTexts.next : AppTexts.getStarted,
                style: AppTextStyles.navigationTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
            onPressed: () {
              controller.onNextClicked();
            },
          ),
        ],
      ),
    );
  }
}
