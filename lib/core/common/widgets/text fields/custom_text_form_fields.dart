import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFormField extends StatefulWidget {
  final TextInputType keyboardType;
  final bool isEditProfile;
  final bool isMyWallet;
  final String? hintText;
  final String? labelText;
  final bool showPrefixIcon;
  final String? prefixIconPath;

  final bool showSuffixIcon;
  final String? suffixIcon;
  final bool isPasswordField;

  const CustomTextFormField({
    super.key,
    required this.keyboardType,
    this.isEditProfile = false,
    this.isMyWallet = false,
    this.hintText,
    this.labelText,
    this.showPrefixIcon = false,
    this.prefixIconPath,
    this.showSuffixIcon = false,
    this.suffixIcon,
    this.isPasswordField = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  /// Variable for Obscure Text Conditioning
  bool hideText = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.secondaryColor,
      cursorHeight: AppSizes.textFieldCursorHeight.h,
      keyboardType: widget.keyboardType,
      style: widget.isEditProfile
          ? AppTextStyles.hintTextStyle.copyWith(
              color: AppColors.primaryColor,
              fontSize: AppSizes.largeFontSize,
            )
          : AppTextStyles.hintTextStyle.copyWith(
              color: AppColors.white,
              fontSize: AppSizes.largeFontSize,
            ),
      obscureText: hideText,
      decoration: InputDecoration(
        fillColor: widget.isEditProfile
            ? AppColors.textFormFieldSecondaryBgColors
            : AppColors.textFormFieldPrimaryBgColor,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: widget.isMyWallet
              ? BorderSide(color: AppColors.secondaryColor)
              : BorderSide.none,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusSmall.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: widget.isMyWallet
              ? BorderSide(color: AppColors.secondaryColor)
              : BorderSide.none,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusSmall.r),
        ),
        prefixIcon: widget.showPrefixIcon
            ? Padding(
                padding: EdgeInsets.only(
                  left: AppSizes.paddingMedium.w,
                  right: AppSizes.paddingSmall.w,
                ),
                child: SvgPicture.asset(widget.prefixIconPath!),
              )
            : SizedBox.shrink(),
        prefixIconConstraints: BoxConstraints(minWidth: AppSizes.iconSmall.w, minHeight: AppSizes.iconSmall.h),
        hintText: widget.hintText,
        hintStyle: widget.isEditProfile ? AppTextStyles.hintTextStyle.copyWith(
          color:AppColors.black,
          fontSize: AppSizes.xLargeFontSize.sp
        ) : AppTextStyles.hintTextStyle,
        labelText: widget.labelText,
        labelStyle: AppTextStyles.hintTextStyle.copyWith(
          color: AppColors.secondaryColor,
        ),
        suffixIcon: widget.showSuffixIcon
            ? Padding(
                padding: EdgeInsets.only(right: AppSizes.paddingMedium.w),
                child: widget.isPasswordField
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            hideText = !hideText;
                          });
                        },
                        child: (SvgPicture.asset(
                          hideText
                              ? AppAssets.hideTextIcon
                              : AppAssets.showTextIcon,
                          width: AppSizes.iconMedium.w,
                          height: AppSizes.iconMedium.h,
                        )),
                      )
                    : Padding(
                        padding: EdgeInsets.only(right: AppSizes.paddingMedium.w),
                        child: SvgPicture.asset(widget.suffixIcon!),
                      ),
              )
            : SizedBox.shrink(),
        suffixIconConstraints: BoxConstraints(minWidth: AppSizes.iconMedium.w, minHeight: AppSizes.iconMedium.w),
        isDense: true,
      ),
    );
  }
}
