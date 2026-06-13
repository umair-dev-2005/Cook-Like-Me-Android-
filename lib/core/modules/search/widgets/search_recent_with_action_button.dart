import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SearchRecentWithActionButton extends StatelessWidget {
  const SearchRecentWithActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Text [ Recent ]
        Text(
          AppTexts.recent,
          style: AppTextStyles.titleLargeTextStyle.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: AppSizes.xLargeFontSize.sp,
          ),
        ),

        Text(
            AppTexts.clearAll,
            style: AppTextStyles.actionTextStyle
        ),

      ],
    );
  }
}
