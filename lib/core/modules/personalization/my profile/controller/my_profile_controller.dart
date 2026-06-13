import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:get/get.dart';

class MyProfileController extends GetxController{

  /// Getter to get Instance After Creating Once
  static MyProfileController get instance => Get.find();

  /// List Containing All Posts Videos Thumbnails
 static List<String>  allPostsThumbnails = [
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


 /// List Containing All Saved Videos Thumbnails
 static List<String> savedVideosThumbnails = [
   AppAssets.video1Thumbnail,
   AppAssets.video2Thumbnail,
   AppAssets.video3thumbnail,
   AppAssets.video4thumbnail,
   AppAssets.video5thumbnail,
   AppAssets.video6thumbnail,
 ];

 /// List Containing Liked Videos Thumbnails
 static List<String> likedVideosThumbnails = [
   AppAssets.video1Thumbnail,
   AppAssets.video2Thumbnail,
   AppAssets.video3thumbnail,
 ];

}