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

class StatusUserDetails extends StatelessWidget {
  const StatusUserDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomCircularImageContainer(
        width: 60.w,
        height: 60.h,
        isNetworkImage: false,
        imagePath: AppAssets.userImage,
      ),
      title: Row(
        children: [
          Text(
            AppTexts.dummyUser2,
            style: AppTextStyles.titleLargeTextStyle,
          ),
          AppSpacing.getWidth(width: AppSizes.spaceBtwItems / 3.w),
          Text(
            "22 minutes ago",
            style: AppTextStyles.captionTextStyle.copyWith(
              color: AppColors.white,
            ),
          ),
        ],
      ),
      trailing: GestureDetector(
          onTap:(){
            Get.back();
          },child: SvgPicture.asset(AppAssets.cancelIcon)),
    );
  }
}
