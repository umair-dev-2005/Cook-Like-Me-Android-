import 'package:cook_like_me/core/common/widgets/containers/custom_circular_image_container.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ConnectionScrollableFollowingList extends StatelessWidget {
  const ConnectionScrollableFollowingList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        final isFollowing = index % 2 == 0;
        return ListTile(
          leading: CustomCircularImageContainer(
            width: 68.w,
            height: 68.h,
            isNetworkImage: false,
            bgColor: AppColors.secondaryColor,
            imagePath: AppAssets.userImage,
          ),
          title: Text(
            AppTexts.dummyUser2,
            style: AppTextStyles.captionTextStyle.copyWith(
              color: AppColors.white,
            ),
          ),
          subtitle: Text(
            AppTexts.dummyUserDescription,
            style: AppTextStyles.subTitleLargeTextStyle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Text(AppTexts.following,
            style: AppTextStyles.elevatedButtonTextStyle.copyWith(
                color: AppColors.secondaryColor,
                fontSize: AppSizes.mediumFontSize.sp
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          indent: 20.w,
          endIndent: 20.w,
          color: AppColors.charcoalGray,
        );
      },
    );
  }
}
