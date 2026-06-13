import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/modules/status/widgets/status_progress_bars.dart';
import 'package:cook_like_me/core/modules/status/widgets/status_text_field.dart';
import 'package:cook_like_me/core/modules/status/widgets/status_user_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          ///.......... [ First Layer ]......... Status Video
          Image.asset(AppAssets.statusImage,
          width: double.infinity,
          height:double.infinity,
          fit: BoxFit.cover,),

          ///.............[ Second Layer ]..........
          Column(
            children: [
              AppSpacing.getHeight(height: AppSizes.spaceBtwSections * 1.3.h),

              /// Progress Bars
              StatusProgressBars(),

              AppSpacing.getHeight(height: AppSizes.spaceBtwItems.h),

              /// User Detail
              StatusUserDetails(),

              Spacer(),

              /// Custom Text Field
              StatusTextField(),

              AppSpacing.getHeight(height: AppSizes.spaceBtwItems.h),
            ],
          ),
        ],
      ),
    );
  }
}



