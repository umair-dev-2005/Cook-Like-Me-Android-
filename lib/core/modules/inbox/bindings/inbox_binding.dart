import 'package:cook_like_me/core/modules/inbox/controller/inbox_controller.dart';
import 'package:get/get.dart';

class InboxBinding implements Bindings {

  @override
  void dependencies() {
    Get.put(InBoxController());
  }



}