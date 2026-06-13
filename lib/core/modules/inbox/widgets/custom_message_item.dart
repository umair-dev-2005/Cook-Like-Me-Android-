import 'package:cook_like_me/core/common/widgets/containers/custom_circular_image_container.dart';
import 'package:cook_like_me/core/common/widgets/containers/custom_rounded_container.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMessageItem extends StatelessWidget {

  final String imagePath ;
  final String userName ;
  final String userMessage ;
  final String messageReceivedTime ;

  const CustomMessageItem({super.key,
    required this.imagePath,
    required this.userName,
    required this.userMessage,
    required this.messageReceivedTime,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      width: 361,
      //height: 65,
      backgroundColor: AppColors.messageItemBgColor,
      borderRadius: AppSizes.borderRadiusSmall,
      child: ListTile(
        leading: CustomCircularImageContainer(
          width: 68,
          height: 68,
          isNetworkImage: false,
          bgColor: AppColors.secondaryColor,
          imagePath: imagePath,
        ),
        title: Text(
          userName,
          style: AppTextStyles.titleLargeTextStyle.copyWith(fontSize: 14.sp),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          userMessage,
          style: AppTextStyles.subTitleLargeTextStyle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Text(
          messageReceivedTime,
          style: AppTextStyles.captionTextStyle.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
