import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/containers/custom_circular_image_container.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MyEditProfileHeader extends StatelessWidget {
  const MyEditProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ///......[First Layer].... Container Acting As A Background
        SizedBox(width: double.infinity, height: 320.h),

        ///..........[Second Layer ].......... My Cover Photo
        Container(
          width: double.infinity,
          height: 270.h,
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
            image: DecorationImage(
              image: AssetImage(AppAssets.myCoverPhoto,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),

        ///...........[Third Layer].......... My Profile Image + Edit Icon
        Positioned(
          right: 0,
          left: 0,
          bottom: 0,
          child: Center(
            child: Stack(
              children: [
                /// Profile Avatar
                CustomCircularImageContainer(
                  width: 140.w,
                  height: 140.h,
                  isNetworkImage: false,
                  bgColor: AppColors.secondaryColor,
                ),

                /// Edit Profile Icon
                Positioned(
                  bottom: 140*.04.h,
                  right: 140*.04.w,
                  child: SvgPicture.asset(
                    AppAssets.changeProfilePictureIcon,
                    width: 32.w,
                    height: 32.h,
                  ),
                ),
              ],
            ),
          ),
        ),

        ///............Fourth Layer [ Camera Icon + Change Cover Text ]
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              AppSpacing.getHeight(
                height: AppSizes.spaceBtwSections * 2.2.h,
              ),
              SvgPicture.asset(
                AppAssets.changeCoverPhotoIcon,
                width: 70.w,
              ),
              Text(
                AppTexts.changeCover,
                style: AppTextStyles.titleLargeTextStyle.copyWith(
                  fontSize: AppSizes.xXLargeFontSize.sp,
                ),
              ),
            ],
          ),
        ),

        ///.............[5th Layer]......... App Bar
        SizedBox(
          width: double.infinity,
          height: 66.h,
          child: AppBar(
            backgroundColor: AppColors.darkBlue,
            title: Text(
              AppTexts.editProfile,
              style: AppTextStyles.titleLargeTextStyle,
            ),
            centerTitle: true,
            leading: Transform.scale(
              scale: .5,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SvgPicture.asset(AppAssets.backIcon),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
