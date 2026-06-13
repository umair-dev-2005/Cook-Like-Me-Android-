import 'package:cook_like_me/core/modules/user_profile_screen/controller/user_profile_controller.dart';
import 'package:get/get.dart';

class UserProfileBindings implements Bindings {
  @override
  void dependencies() {
   Get.lazyPut<UserProfileController>(()=> UserProfileController());
  }





}