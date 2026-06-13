import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/modules/personalization/my%20profile/widgets/all_posts_videos_grid_layout.dart';
import 'package:cook_like_me/core/modules/personalization/my%20profile/widgets/liked_videos_grid_layout.dart';
import 'package:cook_like_me/core/modules/personalization/my%20profile/widgets/my_profile_elevated_buttons.dart';
import 'package:cook_like_me/core/modules/personalization/my%20profile/widgets/my_profile_header.dart';
import 'package:cook_like_me/core/modules/personalization/my%20profile/widgets/my_profile_stat_counter.dart';
import 'package:cook_like_me/core/modules/personalization/my%20profile/widgets/my_profile_tab_bar.dart';
import 'package:cook_like_me/core/modules/personalization/my%20profile/widgets/saved_videos_grid_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            ///.................[Upper Part]................
            MyProfileHeader(),

            /// User Name
            Text(AppTexts.dummyUser2, style: AppTextStyles.titleLargeTextStyle),

            /// User Description
            Text(
              AppTexts.dummyUserDescription,
              style: AppTextStyles.titleLargeTextStyle,
            ),

            AppSpacing.getHeight(height: AppSizes.spaceBtwItems.h),

            /// My Profile Total Count of Posts + Followers + Following
            MyProfileStatCounter(),

            AppSpacing.getHeight(height: AppSizes.spaceBtwItems.h),

            /// Edit And Share Buttons
            MyProfileElevatedButtons(),

            AppSpacing.getHeight(height: AppSizes.spaceBtwSections / 4.h),

            ///........... [LOWER PART].........................

            /// My Profile Tab Bar
            MyProfileTabBar(),

            /// My Profile Tab Bar View
            Expanded(
              child: TabBarView(
                children: [
                  // All Posts Grid Layout
                  AllPostsVideosGridLayout(),

                  // Saved Videos Grid Layout
                  SavedVideosGridLayout(),

                  // Liked Videos Grid Layout
                  LikedVideosGridLayout(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
