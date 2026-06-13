import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/routes/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {

  /// Getter To Use Instance After Creating Once
  static OnBoardingController get instance => Get.find();


  /// Variable to Store Index Of Current OnBoarding Page
  Rx<int> currentPage = 0.obs;

  /// Creating Instance of Page Controller Class
  PageController pageController = PageController();

  /// List Containing All On-Boarding Images
  static List<String> onBoardingImages = [
    "assets/images/onboarding_one.png",
    "assets/images/onboarding_two.png",
    "assets/images/onboarding_three.png"
  ];


  /// Function to Store Current Page Index in Rx Variable [ currentPage ]
  void onPageChanged(int index) {
    currentPage.value = index;
  }

  /// Method to Swipe Screen Ang to Navigate on Sign In Screen At Last Page
  void onNextClicked (){
    if(currentPage.value < 2) {
      pageController.animateToPage(
        currentPage.value + 1 ,
          curve:Curves.easeInOut,
        duration: Duration(milliseconds: 300) ,
      );
    }else{
      Get.offNamed(RouteNames.signInScreen);
    }

  }

  /// List Containing All Titles of All OmBoarding Screens
  List<String> onBoardingTitles = [
    AppTexts.onBoardingTitleFirst,
    AppTexts.onBoardingTitleSecond,
    AppTexts.onBoardingTitleThird];

  /// List Containing All SubTitles of All OnBoarding Screens
  List<String> allOnBoardingSubTitles = [
    AppTexts.onBoardingSubTitleFirst,
    AppTexts.onBoardingSubTitleSecond,
    AppTexts.onBoardingSubTitleThird
  ];
}