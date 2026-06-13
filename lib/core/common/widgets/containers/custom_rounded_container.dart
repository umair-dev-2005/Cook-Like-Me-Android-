import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRoundedContainer extends StatelessWidget {
  final double width;

  final double? height;
  final Color? backgroundColor;
  final Color? borderColor;
  final Widget child;
  final double borderRadius;

  const CustomRoundedContainer({
    super.key,
    required this.width,
     this.height,
    this.backgroundColor,
    this.borderColor,
    required this.child,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.transparent,
        border: Border.all(color: borderColor ?? AppColors.transparent),
        borderRadius: BorderRadius.circular(borderRadius)
      ),
      child: child,
    );
  }
}
