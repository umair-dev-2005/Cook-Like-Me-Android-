import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/modules/search/widgets/custom_search_item.dart';
import 'package:cook_like_me/core/modules/search/widgets/search_field.dart';
import 'package:cook_like_me/core/modules/search/widgets/search_recent_with_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.charcoalGray.withValues(alpha: .6),

      /// App Bar
      appBar: AppBar(
        backgroundColor: AppColors.black,
        leading: Transform.scale(
          scale: .4,
          child: GestureDetector(
              onTap:(){
                Get.back();
              },child: SvgPicture.asset(AppAssets.backIcon)),
        ),
        titleSpacing: 0,
        title: SearchField(),
        actions: [],
      ),

      /// Body
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSpacing.getHeight(height: AppSizes.spaceBtwItems.h),

            SearchRecentWithActionButton(),

            AppSpacing.getHeight(height: AppSizes.spaceBtwSections / 2.5.h),

            /// Previous Searches
            CustomSearchItem(searchText: 'Ali'),
            AppSpacing.getHeight(height: AppSizes.spaceBtwItems / 2.5.h),
            CustomSearchItem(searchText: 'Aslam'),
            AppSpacing.getHeight(height: AppSizes.spaceBtwItems / 2.5.h),
            CustomSearchItem(searchText: 'Hadi'),
            AppSpacing.getHeight(height: AppSizes.spaceBtwItems / 2.5.h),
            CustomSearchItem(searchText: 'Umair'),
          ],
        ),
      ),
    );
  }
}
