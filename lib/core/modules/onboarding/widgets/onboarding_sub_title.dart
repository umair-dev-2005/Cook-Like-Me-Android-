import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/modules/onboarding/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnBoardingSubTitle extends StatelessWidget {
   OnBoardingSubTitle({
    super.key,
  });

   /// Finding Instance of OnBoarding Controller Class
   final controller = OnBoardingController.instance ;
  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> Padding(
        padding:  EdgeInsets.symmetric(horizontal: AppSizes.paddingLarge.w),
        child: Text(
          controller.allOnBoardingSubTitles[controller.currentPage.value],
          style: AppTextStyles.subTitleLargeTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
