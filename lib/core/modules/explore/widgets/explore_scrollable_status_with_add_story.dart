import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/containers/custom_circular_image_container.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'explore_add_story.dart';

class ExploreScrollableStatusWithAddStory extends StatelessWidget {
  const ExploreScrollableStatusWithAddStory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.separated(
        padding: EdgeInsets.only(left: AppSizes.paddingLarge.w),
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        itemBuilder: (context, index) {
          return index == 0
              ?
          ExploreAddStory()
              : GestureDetector(
            onTap: (){
              Get.toNamed(RouteNames.statusScreen);
            },
                child: SizedBox(
                            width: 47.w,
                            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomCircularImageContainer(
                    width: 55.w,
                    height: 55.h,
                    isNetworkImage: false,
                    borderColor: AppColors.secondaryColor,
                    imagePath: AppAssets.userImage,
                  ),
                  AppSpacing.getHeight(
                    height: AppSizes.spaceBtwItems / 2.h,
                  ),
                  Text(
                    AppTexts.dummyUser1,
                    style: AppTextStyles.captionTextStyle.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
                            ),
                          ),
              );
        },
        separatorBuilder: (context, index) {
          return AppSpacing.getWidth(width: AppSizes.spaceBtwItems.w);
        },
      ),
    );
  }
}

