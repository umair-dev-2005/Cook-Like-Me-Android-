import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MyWalletScreen extends StatelessWidget {
  const MyWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// App Bar
      appBar: AppBar(
        backgroundColor: AppColors.black,
        leading: Transform.scale(
          scale: .3,
          child: SvgPicture.asset(AppAssets.backIcon),
        ),
        title: Text(
          AppTexts.myWallet,
          style: AppTextStyles.titleLargeTextStyle,
        ),
        centerTitle: true,
      ),

      /// Body
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.w),
        child: Column(
          children: [

            /// User Name
            Text(AppTexts.dummyUser2, style: AppTextStyles.displayTextStyle.copyWith(
              fontSize: AppSizes.headingFontSize
            )),

            /// Balance
            Text(AppTexts.balance, style: AppTextStyles.displayTextStyle.copyWith(
               fontSize: AppSizes.headingFontSize
            )),

            ///
          ],
        ),
      ),
    );
  }
}
