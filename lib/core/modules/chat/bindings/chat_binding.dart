import 'package:cook_like_me/core/modules/chat/controller/chat_controller.dart';
import 'package:get/get.dart';

class ChatBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatController>(() => ChatController(userName: Get.arguments));
  }
}
