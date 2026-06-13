import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/containers/custom_circular_image_container.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_home_action_button.dart';


class CustomCommentItem extends StatelessWidget {
  final String userName;
  final String comment ;
  final String time ;
  final String icon ;
  final bool showMoreReplies ;

  const CustomCommentItem({
    super.key,
    required this.userName,
    required this.comment,
    required this.time,
    required this.icon,
    this.showMoreReplies = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // List Tile
        ListTile(
          leading: CustomCircularImageContainer(
            width: 60.w,
            height: 60.h,
            isNetworkImage: false,
            imagePath: AppAssets.userImage,
          ),
          title: Text(
            userName,
            style: AppTextStyles.titleSmallTextStyle,
          ),

          subtitle: Text(
            comment,
            style: AppTextStyles.titleSmallTextStyle,
          ),
          trailing: CustomHomeActionButton(
            actionButtonIcon: icon,
            width: 30.w,
             height: 20.h,
            counts: "2K",
            spaceBelowCount: 0.h,
          ),
        ),

        // Comment Time + Reply Button
        Padding(
          padding:  EdgeInsets.only(left:88.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                time,
                style: AppTextStyles.captionTextStyle
                    .copyWith(color: AppColors.white),
              ),
              AppSpacing.getWidth(
                width: AppSizes.spaceBtwItems / 2.w,
              ),
              Text(
                "reply",
                style: AppTextStyles.actionTextStyle,
              ),
            ],
          ),
        ),

        showMoreReplies ?
        // View More Replies
        Text(
          AppTexts.viewMoreReply,
          style: AppTextStyles.actionTextStyle,
        ) : SizedBox.shrink(),
      ],
    );
  }
}
