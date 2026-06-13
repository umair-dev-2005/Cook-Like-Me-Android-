import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/modules/home/widgets/home_modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_home_action_button.dart';

class HomeVideoActionButtons extends StatelessWidget {
  const HomeVideoActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(right: AppSizes.paddingLarge.w),

        /// Likes + Comments + Share + Save
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Spacer(),

            /// Like Button
            CustomHomeActionButton(
              actionButtonIcon: AppAssets.heartFilledIcon,
              width: 45.w,
              height: 45.h,
              counts: AppTexts.dummyLikes,
            ),

            /// Comment Button
            CustomHomeActionButton(
              actionButtonIcon: AppAssets.commentIcon,
              width: 30.w,
              height: 30.h,
              counts: AppTexts.dummyComments,
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return HomeModalBottomSheet();
                  },
                  isScrollControlled: true,
                  backgroundColor: AppColors.modalBottomSheetBgColor,
                  barrierColor: AppColors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.r),
                      topLeft: Radius.circular(40.r),
                    ),
                  ),
                );
              },
            ),

            /// Save Button
            CustomHomeActionButton(
              actionButtonIcon: AppAssets.saveIcon,
              width: 30.w,
              height: 30.h,
              counts: AppTexts.save,
            ),

            /// Share Button
            CustomHomeActionButton(
              actionButtonIcon: AppAssets.shareIcon,
              width: 30.w,
              height: 30.h,
              counts: AppTexts.dummyShares,
            ),
            AppSpacing.getHeight(height: 80.h),
          ],
        ),
      ),
    );
  }
}
