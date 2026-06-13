import 'package:cook_like_me/core/modules/chat/bindings/chat_binding.dart';
import 'package:cook_like_me/core/modules/chat/view/chat_screen.dart';
import 'package:cook_like_me/core/modules/connection/view/connection_screen.dart';
import 'package:cook_like_me/core/modules/explore/bindings/explore_bindings.dart';
import 'package:cook_like_me/core/modules/explore/view/explore_screen.dart';
import 'package:cook_like_me/core/modules/home/view/home_screen.dart';
import 'package:cook_like_me/core/modules/inbox/bindings/inbox_binding.dart';
import 'package:cook_like_me/core/modules/inbox/view/inbox_screen.dart';
import 'package:cook_like_me/core/modules/map/viwe/map_screen.dart';
import 'package:cook_like_me/core/modules/my%20wallet/view/my_wallet_screen.dart';
import 'package:cook_like_me/core/modules/onboarding/bindings/onboarding_bindings.dart';
import 'package:cook_like_me/core/modules/onboarding/view/onboarding_screen.dart';
import 'package:cook_like_me/core/modules/personalization/edit%20profile/view/edit_profile_screen.dart';
import 'package:cook_like_me/core/modules/personalization/my%20profile/view/my_profile_screen.dart';
import 'package:cook_like_me/core/modules/post%20creation/view/post_creation_screen.dart';
import 'package:cook_like_me/core/modules/reels/view/reels_screen.dart';
import 'package:cook_like_me/core/modules/reset%20password/view/create_new_password_screen.dart';
import 'package:cook_like_me/core/modules/reset%20password/view/otp_verification_screen.dart';
import 'package:cook_like_me/core/modules/reset%20password/view/reset_password_screen.dart';
import 'package:cook_like_me/core/modules/search/view/search_screen.dart';
import 'package:cook_like_me/core/modules/settings/view/settings_screen.dart';
import 'package:cook_like_me/core/modules/sign%20in/view/sign_in_screen.dart';
import 'package:cook_like_me/core/modules/sign%20up/view/sign_up_screen.dart';
import 'package:cook_like_me/core/modules/splash/view/splash_screen.dart';
import 'package:cook_like_me/core/modules/status/view/status_screen.dart';
import 'package:cook_like_me/core/modules/user_profile_screen/bindings/user_profile_bindings.dart';
import 'package:cook_like_me/core/modules/user_profile_screen/view/user_profile_screen.dart';
import 'package:cook_like_me/core/modules/video%20editing/view/video_editing_screen.dart';
import 'package:cook_like_me/core/modules/video%20preview/view/video_preview_screen.dart';
import 'package:cook_like_me/core/modules/video%20recording/view/video_recording_screen.dart';
import 'package:cook_like_me/core/routes/route_names.dart';
import 'package:get/get.dart';

class AppRoutes {

  static List<GetPage>  screens = [
    GetPage(name: RouteNames.splashScreen , page: ()=> SplashScreen()),
    GetPage(name: RouteNames.homeScreen, page: ()=> HomeScreen() ),
    GetPage(name:RouteNames.onBoardingScreen,page: ()=>OnBoardingScreen(),binding: OnBoardingBindings()),
    GetPage(name:RouteNames.signInScreen , page: ()=> SignInScreen()),
    GetPage(name:RouteNames.signUpScreen,page:()=> SignUpScreen()),
    GetPage(name:RouteNames.resetPasswordScreen,page:()=> ResetPasswordScreen()),
    GetPage(name:RouteNames.createNewPasswordScreen,page:()=> CreateNewPasswordScreen()),
    GetPage(name:RouteNames.otpVerificationScreen, page:()=> OtpVerificationScreen()),
    GetPage(name:RouteNames.mapScreen ,page:()=> MapScreen()),
    GetPage(name:RouteNames.videoRecordingScreen, page:()=> VideoRecordingScreen()),
    GetPage(name:RouteNames.videoEditingScreen, page:()=>VideoEditingScreen()),
    GetPage(name:RouteNames.postCreationScreen, page:()=> PostCreationScreen()),
    GetPage(name:RouteNames.videoPreviewScreen,page:()=> VideoPreviewScreen()),
    GetPage(name:RouteNames.exploreScreen,page:()=> ExploreScreen(),binding:ExploreBindings()) ,
    GetPage(name: RouteNames.reelsScreen , page:()=> ReelsScreen()),
    GetPage(name:RouteNames.statusScreen, page:()=>StatusScreen()),
    GetPage(name:RouteNames.inboxScreen, page:()=>InboxScreen(),binding: InboxBinding()),
    GetPage(name:RouteNames.chatScreen, page:()=> ChatScreen(userName:Get.arguments),binding:ChatBinding() ),
    GetPage(name:RouteNames.userProfileScreen, page:()=> UserProfileScreen(),binding: UserProfileBindings()),
    GetPage(name:RouteNames.myProfileScreen, page:()=>MyProfileScreen()),
    GetPage(name:RouteNames.editProfileScreen, page:()=> EditProfileScreen()),
    GetPage(name:RouteNames.connectionScreen , page:()=> ConnectionScreen()),
    GetPage(name:RouteNames.settingsScreen, page:()=> SettingsScreen()),
    GetPage(name:RouteNames.searchScreen, page:()=> SearchScreen()),
    GetPage(name:RouteNames.myWalletScreen , page:()=> MyWalletScreen()),
  ];
}