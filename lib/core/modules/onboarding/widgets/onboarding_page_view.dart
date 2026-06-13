import 'package:cook_like_me/core/modules/onboarding/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
    OnBoardingPageView({
    super.key,
  });

   /// Finding Instance of OnBoardingController Class
   final controller = OnBoardingController.instance ;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller.pageController,
      onPageChanged:  controller.onPageChanged,
      children: OnBoardingController.onBoardingImages.map(
            (image) =>
            Image.asset(image, width: double.infinity, fit: BoxFit.cover
            ),
      ).toList(),
    );
  }
}
