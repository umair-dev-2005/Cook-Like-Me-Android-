import 'package:cook_like_me/core/common/widgets/text%20fields/custom_text_field.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      width: MediaQuery.sizeOf(context).width *.78,
      height: 40,
      borderRadius: AppSizes.borderRadiusXXSmall.r,
      hintTextColor: AppColors.white,
      prefixIcon: Transform.scale(
        scale: .6,
        child: SvgPicture.asset(
          AppAssets.searchIcon,
          colorFilter: ColorFilter.mode(
            AppColors.secondaryColor,
            BlendMode.srcIn,
          ),
        ),
      ),
      hintText: AppTexts.search,
      borderColor: AppColors.secondaryColor,
    );
  }
}
