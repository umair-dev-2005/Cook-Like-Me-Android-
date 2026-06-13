import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/text%20fields/custom_text_field.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_comment_item.dart';


class HomeModalBottomSheet extends StatelessWidget {
  const HomeModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 420.h,
      child: Stack(
        children: [

          /// First Layer
          ///.......... Column Containing [ Drag Handle + Total Comments Count +
          ///  Scrollable AllComments Items ]
          Column(
            children: [
              AppSpacing.getHeight(height: 20.h),

              // Drag Handle
              Container(
                width: 130.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(3.r),
                ),
              ),

              AppSpacing.getHeight(
                height: AppSizes.spaceBtwItems,
              ),

              // Total Comments
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppTexts.comments,
                    style: AppTextStyles.titleLargeTextStyle,
                  ),
                  AppSpacing.getWidth(
                    width: AppSizes.spaceBtwItems / 2,
                  ),

                  // Total Comments Count
                  Text(
                    "(12345)",
                    style: AppTextStyles.titleLargeTextStyle,
                  ),
                ],
              ),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Comment Item
                      CustomCommentItem(
                        userName: AppTexts.dummyUser1,
                        comment: AppTexts.dummyComment1,
                        time: 'Now',
                        icon: AppAssets.heartFilledIcon,
                      ),

                      CustomCommentItem(
                        userName: AppTexts.dummyUser2,
                        comment: AppTexts.dummyComment2,
                        time: "Yesterday",
                        icon: AppAssets.heartIcon,
                        showMoreReplies: false,
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                          left: AppSizes.paddingXLarge.w,
                        ),
                        child: CustomCommentItem(
                          userName: AppTexts.dummyUser3,
                          comment: AppTexts.dummyComment3,
                          time: "Yesterday",
                          icon: AppAssets.heartFilledIcon,
                          showMoreReplies: false,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                          left: AppSizes.paddingXLarge.w,
                        ),
                        child: CustomCommentItem(
                          userName: AppTexts.dummyUser3,
                          comment: AppTexts.dummyComment3,
                          time: "Yesterday",
                          icon: AppAssets.heartFilledIcon,
                          showMoreReplies: false,
                        ),
                      ),
                      AppSpacing.getHeight(height: AppSizes.spaceBtwSections.h*1.2)
                    ],
                  ),
                ),
              ),
            ],
          ),

          /// Second Layer
          /// Text Field to Write Comment
          Positioned(
            bottom: 1.h,
            left: 0,
            right: 0,
            child: CustomTextField(
              width: 345.w,
              height: 45.h,
              margin: EdgeInsets.symmetric(horizontal: AppSizes.paddingMedium),
              borderRadius: AppSizes.borderRadiusXXXLarge.r,
              hintText: AppTexts.typeYourMessage,
              suffixIcon: AppAssets.sendMessage,
              hintTextColor: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
