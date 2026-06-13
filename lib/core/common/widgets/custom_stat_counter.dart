import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomStatCounter extends StatelessWidget {
  final String title ;
  final String subTitle ;
  const CustomStatCounter({
    super.key,
    required this.title,
    required this.subTitle
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 96.w,
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.titleLargeTextStyle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            subTitle,
            style: AppTextStyles.titleLargeTextStyle,
          ),
        ],
      ),
    );
  }
}
