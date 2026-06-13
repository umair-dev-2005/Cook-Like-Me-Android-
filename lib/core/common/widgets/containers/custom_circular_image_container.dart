import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCircularImageContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color? borderColor;
  final String? imagePath;
  final String? imageUrl;

  final bool isNetworkImage;
  final Color? bgColor;

  final double? borderWidth;

  const CustomCircularImageContainer({
    super.key,
    required this.width,
    required this.height,
    this.borderColor,
    this.imagePath,
    this.isNetworkImage = false,
    this.imageUrl,
    this.bgColor,
    this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,

      decoration: BoxDecoration(
        color: bgColor ?? AppColors.transparent,
        border: Border.all(
          color: borderColor ?? Colors.transparent,
          width: borderWidth ?? 0,

        ),
        shape: BoxShape.circle,
        image: isNetworkImage ?
        (imageUrl != null && imageUrl!.isNotEmpty )?
        DecorationImage(image: NetworkImage(AppAssets.userImage),fit: BoxFit.contain)
            : DecorationImage(image: AssetImage(imagePath ?? AppAssets.userImage),
        fit: BoxFit.contain)
            : DecorationImage(image: AssetImage(imagePath ?? AppAssets.userImage),
        fit: BoxFit.contain),
      ),
    );
  }
}
