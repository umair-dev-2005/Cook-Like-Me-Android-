import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/modules/sign%20in/widgets/sign_in_footer.dart';
import 'package:cook_like_me/core/modules/sign%20in/widgets/sign_in_form.dart';
import 'package:cook_like_me/core/modules/sign%20in/widgets/sign_in_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Padding(
          padding: AppSpacing.getScreenPadding(),
          child: Column(
            children: [
              AppSpacing.getHeight(height: 104.h),

              /// Header [App Logo]
              SignInHeader(),

              AppSpacing.getHeight(height: AppSizes.spaceBtwSections.h),

              /// Sign In Form [ Sign In Title + Text Form Fields + Sign IN Button ]
              SignInForm(),

              AppSpacing.getHeight(height: AppSizes.spaceBtwItems),

              /// Footer [Already Have An Account + Sign Up]
              SignInFooter(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomNavClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    final center = size.width / 2;

    path.lineTo(center - 70, 0);

    path.quadraticBezierTo(
      center - 35, 0,
      center - 25, 20,
    );

    path.arcToPoint(
      Offset(center + 25, 20),
      radius: const Radius.circular(40),
      clockwise: false,
    );

    path.quadraticBezierTo(
      center + 35, 0,
      center + 70, 0,
    );

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


