import 'package:cook_like_me/core/modules/onboarding/controller/onboarding_controller.dart';
import 'package:get/get.dart';

class OnBoardingBindings extends Bindings{

  @override
  void dependencies() {
  Get.lazyPut<OnBoardingController>(()=>OnBoardingController());
  }

}