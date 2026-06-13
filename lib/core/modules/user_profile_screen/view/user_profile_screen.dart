import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/modules/user_profile_screen/widgets/user_profile_elevated_buttons.dart';
import 'package:cook_like_me/core/modules/user_profile_screen/widgets/user_profile_header.dart';
import 'package:cook_like_me/core/modules/user_profile_screen/widgets/user_profile_heading.dart';
import 'package:cook_like_me/core/modules/user_profile_screen/widgets/user_profile_stats.dart';
import 'package:cook_like_me/core/modules/user_profile_screen/widgets/user_vidoes_grid_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Body
      body: Column(
        children: [
          ///................ [Upper Part].................///
          UserProfileHeader(),

          /// UserName
          Text(
            AppTexts.dummyUser2,
            style: AppTextStyles.titleLargeTextStyle.copyWith(
              fontSize: AppSizes.xLargeFontSize.sp,
            ),
          ),

          /// User Description
          Text(
            AppTexts.dummyUserDescription,
            style: AppTextStyles.titleLargeTextStyle.copyWith(
              fontSize: AppSizes.xLargeFontSize.sp,
            ),
          ),

          AppSpacing.getHeight(height: AppSizes.spaceBtwItems.h),

          /// Total Posts Count + Total Followers + Total Following
          UserProfileStats(),

          AppSpacing.getHeight(height: AppSizes.spaceBtwItems.h),

          /// Follow And Message Button
          UserProfileElevatedButtons(userName: AppTexts.dummyUser2,),

          AppSpacing.getHeight(height: AppSizes.spaceBtwItems.h),

          ///...............[LOWER Part]..............

          //  Heading [Recent Posts]
          UserProfileHeading(),

          // Scrollable Gridlayout Of User Videos
          Expanded(
            child: UserVideosGridLayout(),
          ),
        ],
      ),
    );
  }
}


