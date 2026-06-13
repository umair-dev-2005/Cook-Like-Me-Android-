import 'package:cook_like_me/core/modules/explore/controller/explore_controller.dart';
import 'package:get/get.dart';

class ExploreBindings implements Bindings{

  @override
  void dependencies() {
    Get.lazyPut<ExploreController>(()=>ExploreController());
  }



}