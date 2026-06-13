import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/containers/custom_circular_image_container.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreAddStory extends StatelessWidget {
  const ExploreAddStory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .end,
      children: [
        Stack(
          children: [
            CustomCircularImageContainer(
              width: 55.w,
              height: 55.w,
              isNetworkImage: false,
              imagePath: AppAssets.userImage,
            ),
            Positioned(
              bottom: 3,
              right: 0,
              child: Container(
                width: 20.w,
                height: 18.h,
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  shape: BoxShape.circle,
                  border: BoxBorder.all(
                    color: AppColors.black,
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: AppColors.white,
                    size: AppSizes.iconSmall - 1.w,
                  ),
                ),
              ),
            ),
          ],
        ),

        AppSpacing.getHeight(
          height: AppSizes.spaceBtwItems / 2.h,
        ),
        Text(
          AppTexts.addStory,
          style: AppTextStyles.captionTextStyle.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.white,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
