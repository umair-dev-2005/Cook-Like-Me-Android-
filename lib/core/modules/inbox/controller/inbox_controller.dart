import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:get/get.dart';

class InBoxController extends GetxController {

  /// Getter To Get Instance After Creating Once
  static InBoxController get instance => Get.find();

  /// List Containing Data of All Notifications
   List<Map<String, dynamic>> allNotificationsData = [
    {
      "user_image": AppAssets.userImageThree,
      "user_name": AppTexts.dummyUser1,
      "notification_time": 'now',
      "notification": 'Follow You',
      "notification_icon": AppAssets.followYouIcon,
    },
    {
      "user_image": AppAssets.userImageThree,
      "user_name": "Ali",
      "notification_time": "Today",
      "notification": "Like your post",
      "notification_icon": AppAssets.likeYourPost,
    },
    {
      "user_image":AppAssets.userImageThree,
      "user_name":"Usman",
      "notification_time":"Yesterday",
      "notification":"Comment on your post",
      "notification_icon":AppAssets.commentOnYourPost,
    },
    {
      "user_image":AppAssets.userImageFour,
      "user_name":"Akbar",
      "notification_time":"02/02/2020",
      "notification":"Reply on your comment",
      "notification_icon":AppAssets.replyOnYourComment
    },
    {
      "user_image":AppAssets.userImageFive,
      "user_name":'Hadi',
      "notification_time":"now",
      "notification":"Message you",
      "notification_icon":AppAssets.messageYou
    },
    {
      "user_image":AppAssets.userImageSix,
      "user_name":'Aslam',
      "notification_time":"Yesterday",
      "notification":"Like your post",
      "notification_icon":AppAssets.likeYourPost
    },
    {
      "user_image":AppAssets.userImageThree,
      "user_name":"Akram",
      "notification_time":'01/01/2021',
      "notification":"Comment on your post",
      "notification_icon":AppAssets.commentOnYourPost
    },
    {
      "user_image":AppAssets.userImageThree,
      "user_name":"MM Alam",
      "notification_time":"now",
      "notification":"Reply on your comment",
      "notification_icon":AppAssets.replyOnYourComment
    },
    {
      "user_image":AppAssets.userImageFour,
      "user_name":"Akbar",
      "notification_time":"02/02/2020",
      "notification":"Reply on your comment",
      "notification_icon":AppAssets.replyOnYourComment
    },
    {
      "user_image":AppAssets.userImageFive,
      "user_name":'Hadi',
      "notification_time":"now",
      "notification":"Message you",
      "notification_icon":AppAssets.messageYou
    },
  ];



}
