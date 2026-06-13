import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/buttons/custom_settings_action_button.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isNotificationOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.charcoalGray.withValues(alpha: .6),

      /// App Bar
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          AppTexts.settings,
          style: AppTextStyles.titleLargeTextStyle,
        ),
        centerTitle: true,
        leading: Transform.scale(
          scale: .3,
          child: GestureDetector(
              onTap:(){
                Get.back();
              },child: SvgPicture.asset(AppAssets.backIcon)),
        ),
      ),

      /// Body
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSpacing.getHeight(height: AppSizes.spaceBtwItems * 1.5.h),

            // Change Password
            CustomSettingsActionButton(
              actionButtonTitle: AppTexts.changePassword,
            ),

            //Notifications
            CustomSettingsActionButton(
              isNotification: true,
              actionButtonTitle: AppTexts.notifications,
              child: SizedBox(
                width:40.w,
                height:30.h,
                child: FittedBox(
                  fit:BoxFit.contain,
                  child: Switch(
                    value: isNotificationOn,
                    onChanged: (bool value) {
                      setState(() {
                        isNotificationOn = value;
                      });
                    },
                    activeThumbColor: Color(0xffC5C6C7),
                    inactiveThumbColor: Colors.black,
                    activeTrackColor: AppColors.white,
                    inactiveTrackColor: Color(0xffD9D9D9),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    splashRadius:0,
                  ),
                ),
              ),
            ),

            // Support
            CustomSettingsActionButton(actionButtonTitle: AppTexts.support,),

            // Terms And Conditions
            CustomSettingsActionButton(actionButtonTitle: AppTexts.termsAndConditions,),

            // Privacy Policy
            CustomSettingsActionButton(actionButtonTitle: AppTexts.privacyPolicy,),

            // Share App
            CustomSettingsActionButton(actionButtonTitle: AppTexts.shareApp,),

            // Delete Account
            CustomSettingsActionButton(actionButtonTitle: AppTexts.deleteAccount,),

            // Log Out
            CustomSettingsActionButton(actionButtonTitle: AppTexts.logOut,),
          ],
        ),
      ),
    );
  }
}
