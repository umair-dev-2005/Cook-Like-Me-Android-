import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/modules/personalization/my%20profile/controller/my_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AllPostsVideosGridLayout extends StatelessWidget {
  const AllPostsVideosGridLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8.h,
          crossAxisSpacing: 8.w,
          childAspectRatio: 107.w/160.h
      ),
      itemCount: 9,
      itemBuilder:(context,index){
        final videoThumbnail = MyProfileController.allPostsThumbnails[index];
        return Container(
          decoration: BoxDecoration(
            color:AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusXSmall.r),
            image: DecorationImage(
              image: AssetImage(videoThumbnail),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace/2.w,
          vertical: AppSizes.defaultSpace/2.h),
    );
  }
}
