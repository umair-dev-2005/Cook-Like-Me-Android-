import 'package:cook_like_me/core/common/widgets/buttons/custom_elevated_button.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyEditProfileSaveButton extends StatelessWidget {
  const MyEditProfileSaveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomElevatedButton(
        width: 160.w,
        backgroundColor: AppColors.secondaryColor,
        child: Text(
          AppTexts.save,
          style: AppTextStyles.elevatedButtonTextStyle,
        ),
        onPressed: () {
          Get.offNamed(RouteNames.myProfileScreen);
        },
      ),
    );
  }
}
