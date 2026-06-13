import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/modules/user_profile_screen/controller/user_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserVideosGridLayout extends StatelessWidget {
  const UserVideosGridLayout({super.key});

  @override
  Widget build(BuildContext context) {
    /// Finding Instance Of User Profile Controller
    final userProfileController = UserProfileController.instance;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8.h,
        crossAxisSpacing: 8.w,
        childAspectRatio: 107.w / 160.h,
      ),
      itemCount: 9,
      itemBuilder: (context, index) {
        /// Taking Video Thumbnail According to Index
        final thumbnail = userProfileController.userAllVideosThumbnails[index];
        return Container(
          width: 107.w,
          height: 160.h,
          decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusXSmall.r),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusXSmall.r),
            child: Image.asset(thumbnail, fit: BoxFit.cover),
          ),
        );
      },
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.defaultSpace / 2.w,
        vertical: AppSizes.defaultSpace / 2.h,
      ),
    );
  }
}
