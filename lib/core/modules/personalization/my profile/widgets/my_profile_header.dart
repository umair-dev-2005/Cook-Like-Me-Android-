import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/containers/custom_circular_image_container.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyProfileHeader extends StatelessWidget {
  const MyProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Container Acting As A Background
        SizedBox(height: 290.h),

        /// My Profile Cover Photo
        Container(
          width: double.infinity,
          height: 250.h,
          decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(
                AppSizes.borderRadiusXXLarge.r,
              ),
              bottomLeft: Radius.circular(
                AppSizes.borderRadiusXXLarge.r,
              ),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(
                AppSizes.borderRadiusXXLarge.r,
              ),
              bottomLeft: Radius.circular(
                AppSizes.borderRadiusXXLarge.r,
              ),
            ),
            child: Image(
              image: AssetImage(
                "assets/images/my_cover_photo.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),

        /// My Profile Photo
        Positioned(
          bottom: -3,
          right: 0,
          left: 0,
          child: CustomCircularImageContainer(
            width: 140.w,
            height: 140.h,
            bgColor: AppColors.white,
            borderColor: AppColors.black,
            borderWidth: 5.w,
            isNetworkImage: false,
          ),
        ),

        /// My Name + Settings Option
        SizedBox(
          width: double.infinity,
          height: 66.h,
          child: AppBar(
            backgroundColor: AppColors.darkBlue,
            centerTitle: true,
            title: Text(
              AppTexts.dummyUser2,
              style: AppTextStyles.titleLargeTextStyle,
            ),
            actions: [
              GestureDetector(
                  onTap:(){
                    Get.toNamed(RouteNames.settingsScreen);
                  },child: Icon(Icons.settings, color: AppColors.white)),
              AppSpacing.getWidth(width: AppSizes.spaceBtwItems * 2.w),
            ],
          ),
        ),
      ],
    );
  }
}
