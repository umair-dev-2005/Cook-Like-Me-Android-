import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/modules/onboarding/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingTitle extends StatelessWidget {
   OnBoardingTitle({
    super.key,
  });

  /// Finding Instance of OmBoarding Controller Class
  final controller = OnBoardingController.instance ;
  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> Text(controller.onBoardingTitles[controller.currentPage.value],
        style: AppTextStyles.titleLargeTextStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}
