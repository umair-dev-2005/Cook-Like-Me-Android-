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

class CustomNotificationItem extends StatelessWidget {

  final String userImage ;
  final String userName ;
  final String notificationTime ;
  final String notification ;
  final String notificationIcon ;

  const CustomNotificationItem({super.key,
  required this.userImage,
  required this.userName,
  required this.notificationTime,
  required this.notification,
  required this.notificationIcon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomCircularImageContainer(
        width: 68.w,
        height: 68.h,
        isNetworkImage: false,
        bgColor: AppColors.secondaryColor,
        imagePath: userImage,
      ),
      title: Row(
        children: [
          Text(
            userName,
            style: AppTextStyles.titleLargeTextStyle.copyWith(fontSize: 14.sp),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          AppSpacing.getWidth(width: AppSizes.spaceBtwItems / 2.w),
          Text(
            notificationTime,
            style: AppTextStyles.captionTextStyle.copyWith(
              color: AppColors.white,
            ),
          ),
        ],
      ),
      subtitle: Text(
        notification,
        style: AppTextStyles.subTitleLargeTextStyle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: SvgPicture.asset(
        notificationIcon,
        width: 53.w,
        height: 53.h,
      ),
    );
  }
}
