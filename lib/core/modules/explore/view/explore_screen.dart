import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/modules/explore/controller/explore_controller.dart';
import 'package:cook_like_me/core/modules/explore/widgets/explore_all_videos_grid_layout.dart';
import 'package:cook_like_me/core/modules/explore/widgets/explore_scrollable_status_with_add_story.dart';
import 'package:cook_like_me/core/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ExploreScreen extends StatelessWidget {
   const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Finding Instance of Explore Controller
    final exploreController = ExploreController.instance;
    return Scaffold(
      /// App Bar
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: Transform.scale(
          scale: .5,
          child: SvgPicture.asset(AppAssets.exploreLeadingIcon),
        ),

        title: Text(AppTexts.explore, style: AppTextStyles.titleLargeTextStyle),

        actions: [
          GestureDetector(
              onTap:(){
                Get.toNamed(RouteNames.searchScreen);
              },child: SvgPicture.asset(AppAssets.searchIcon)),
          AppSpacing.getWidth(width: AppSizes.spaceBtwItems * 1.5.w),
        ],
        centerTitle: true,
      ),

      /// Body
      body: Column(
        children: [
          // Scrollable List Of Status
          ExploreScrollableStatusWithAddStory(),

          AppSpacing.getHeight(height: AppSizes.spaceBtwItems.h),

          /// Grid Layout Of Videos
          ExploreVideosGridLayout(exploreController: exploreController),
        ],
      ),
    );
  }
}
