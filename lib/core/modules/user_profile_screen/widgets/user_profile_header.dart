import 'package:cook_like_me/core/common/widgets/containers/custom_circular_image_container.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class UserProfileHeader extends StatelessWidget {
  const UserProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Container Acting As a Background
        Container(height: 290.h,),

        /// User Cover Photo
        Container(
          width: double.infinity.w,
          height: 250.h,
          decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(
                AppSizes.borderRadiusXXLarge.r,
              ),
              bottomLeft: Radius.circular(AppSizes.borderRadiusXXLarge.r),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(
                AppSizes.borderRadiusXXLarge.r,
              ),
              bottomLeft: Radius.circular(AppSizes.borderRadiusXXLarge.r),
            ),
            child: Image.asset(
              "assets/images/dan-gold-4_jhDO54BYg-unsplash.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),

        /// User Profile Picture
        Positioned(
          bottom: -3.h,
           right: 0,
           left: 0,
          child: CustomCircularImageContainer(
            width: 140.w,
            height: 140.h,
            bgColor: AppColors.secondaryColor,
            borderColor: AppColors.black,
            isNetworkImage: false,
            imagePath: AppAssets.userImage,
            borderWidth: 5.w,
          ),
        ),
      ],
    );
  }
}
