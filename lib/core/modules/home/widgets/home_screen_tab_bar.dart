import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
class HomeTabBar extends StatelessWidget {
  const HomeTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: TabBar(
            padding: EdgeInsets.only(top: AppSizes.paddingLarge),
            dividerColor: Colors.transparent,
            unselectedLabelColor: Color(0xff757575),
            labelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.symmetric(
              horizontal: AppSizes.paddingLarge,
            ),
            indicatorColor: AppColors.white,
            tabs: [
              Text(AppTexts.map),
              Text(AppTexts.following, maxLines: 1),
              Text(AppTexts.forYou),
            ],
          ),
    );
  }
}
