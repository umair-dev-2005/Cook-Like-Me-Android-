import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeSearchIcon extends StatelessWidget {
  const HomeSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppSizes.paddingLarge),
      child: Transform.scale(
        scale: 2.8,
        child: Icon(
          Icons.search,
          size: 12.w,
          color: AppColors.white,
        ),
      ),
    );
  }
}
