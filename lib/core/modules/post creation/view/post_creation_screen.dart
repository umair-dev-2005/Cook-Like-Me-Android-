import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/modules/post%20creation/widgets/post_creation_buttons.dart';
import 'package:cook_like_me/core/modules/post%20creation/widgets/post_creation_header.dart';
import 'package:cook_like_me/core/modules/post%20creation/widgets/post_creation_text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostCreationScreen extends StatelessWidget {
  const PostCreationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSpacing.getHeight(height: AppSizes.spaceBtwSections * 1.5.h),

            /// Header [ Back Arrow Icon + Text ( Post)
            PostCreationHeader(),

            AppSpacing.getHeight(height: AppSizes.spaceBtwSections / 3.h),

            /// Body
            PostCreationTextFields(),

            AppSpacing.getHeight(height: AppSizes.spaceBtwSections.h),

            /// Footer

            PostCreationButtons(),
          ],
        ),
      ),
    );
  }
}



