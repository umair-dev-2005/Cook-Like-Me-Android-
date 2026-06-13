import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:get/get.dart';

class UserProfileController extends GetxController{

 /// Getter to Get Instance After Creating Once
  static UserProfileController get instance => Get.find();

  /// List Containing Videos Thumbnails for User Profile Screen
 List<String> userAllVideosThumbnails = [
   AppAssets.video1Thumbnail,
   AppAssets.video2Thumbnail,
   AppAssets.video3thumbnail,
   AppAssets.video4thumbnail,
   AppAssets.video5thumbnail,
   AppAssets.video6thumbnail,
   AppAssets.video7thumbnail,
   AppAssets.video8thumbnail,
   AppAssets.video9thumbnail,
 ];


}