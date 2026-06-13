import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConnectionTabBar extends StatelessWidget {
  const ConnectionTabBar({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: 40.h,
      color: AppColors.charcoalGray,
      child: TabBar(
        controller: _tabController,
        tabAlignment: TabAlignment.center,
        isScrollable: true,
        overlayColor: WidgetStateProperty.all(AppColors.transparent),
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: AppColors.transparent,
        indicatorColor: AppColors.secondaryColor,
        labelStyle: AppTextStyles.titleSmallTextStyle.copyWith(
          fontSize: AppSizes.largeFontSize.sp,
          color: AppColors.secondaryColor,
        ),
        unselectedLabelColor: AppColors.white,
        tabs: [
          Tab(
            child: Row(
              children: [
                Text(AppTexts.followers),
                if (_tabController.index == 0) ...[
                  AppSpacing.getWidth(
                    width: AppSizes.spaceBtwItems / 2.w,
                  ),
                  Text("234K"),
                ],
              ],
            ),
          ),
          Tab(
            child: Row(
              children: [
                Text(AppTexts.following),
                if (_tabController.index == 1) ...[
                  AppSpacing.getWidth(
                    width: AppSizes.spaceBtwItems / 2.w,
                  ),
                  Text("456"),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
