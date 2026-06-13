import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatelessWidget {
  final double width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final double borderRadius;
  final Color? borderColor;
  final String? hintText;
  final Widget? prefixIcon;
  final String? suffixIcon;
  final Color hintTextColor;
  final int? maxLines;
  final String? title;
  final TextEditingController? controller;
  final VoidCallback? onSendPressed;

  const CustomTextField({
    super.key,
    required this.width,
    this.height,
    this.margin,
    required this.borderRadius,
    this.borderColor,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    required this.hintTextColor,
    this.maxLines = 1,
    this.title,
    this.controller,
    this.onSendPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      margin: margin,
      constraints: BoxConstraints(
        maxHeight: 300.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.textFormFieldPrimaryBgColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: borderColor ?? AppColors.transparent,
        ),
      ),
      child: Stack(
        children: [
          // Title
          if (title != null && title!.isNotEmpty)
            Positioned(
              top: 8.h,
              left: AppSizes.paddingMedium.w,
              child: Text(
                title!,
                style: AppTextStyles.titleSmallTextStyle.copyWith(
                  color: AppColors.secondaryColor,
                  fontSize: AppSizes.mediumFontSize,
                ),
              ),
            ),

          // TextField + Send Icon
          Padding(
            padding: EdgeInsets.only(
              top: title != null && title!.isNotEmpty ? 20.h : 8.h,
            ),
            child: TextField(
              controller: controller,
              cursorColor: AppColors.secondaryColor,
              cursorHeight: 20.h,
              keyboardType: TextInputType.multiline,
              style: AppTextStyles.bodySmallTextStyle,
              minLines: 1,
              maxLines: maxLines,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: AppTextStyles.supportingTextStyle.copyWith(
                  color: hintTextColor,
                  fontSize: AppSizes.largeFontSize,
                ),
                prefixIcon: prefixIcon,
                contentPadding: EdgeInsets.only(
                  left: 12.w,
                  right: suffixIcon != null ? 48.w : 12.w,
                  top: 12.h,
                  bottom: 12.h,
                ),
                isDense: true,
              ),
            ),
          ),

          // Send Icon (aligned to bottom-right)
          if (suffixIcon != null)
            Positioned(
              bottom: 8.h,
              right: 16.w,
              child: GestureDetector(
                onTap: onSendPressed,
                child: Transform.scale(
                  scale: 0.85,
                  child: SvgPicture.asset(
                    suffixIcon!,
                    colorFilter: const ColorFilter.mode(
                      AppColors.secondaryColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}