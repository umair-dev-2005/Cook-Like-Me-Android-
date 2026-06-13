import 'package:get/get.dart';

class ChatController extends GetxController{

  /// Getter To get Instance After Creating Once
  static ChatController get instance => Get.find();

  /// Variables
  final String userName ;

  /// Default Constructor
  ChatController({required this.userName});



}