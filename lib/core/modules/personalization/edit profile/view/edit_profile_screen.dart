import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/buttons/custom_elevated_button.dart';
import 'package:cook_like_me/core/common/widgets/containers/custom_circular_image_container.dart';
import 'package:cook_like_me/core/common/widgets/text%20fields/custom_text_form_fields.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/modules/personalization/edit%20profile/widgets/my_edit_profile_form.dart';
import 'package:cook_like_me/core/modules/personalization/edit%20profile/widgets/my_edit_profile_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Edit Profile Header
              MyEditProfileHeader(),

              AppSpacing.getHeight(height: AppSizes.spaceBtwSections.h),

              /// Bio Editing Fields
              MyEditProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}




