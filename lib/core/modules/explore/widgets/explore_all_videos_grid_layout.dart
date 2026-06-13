import 'package:cook_like_me/core/common/widgets/containers/custom_rounded_container.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/modules/explore/controller/explore_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class ExploreVideosGridLayout extends StatelessWidget {
  const ExploreVideosGridLayout({
    super.key,
    required this.exploreController,
  });

  final ExploreController exploreController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.paddingMedium.w),
        shrinkWrap: true,
        itemCount: 21,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 5.h,
            crossAxisSpacing: 5.w,
            childAspectRatio: 128/169
        ),
        itemBuilder: (BuildContext context, int index) {
          final videoThumbnail = exploreController.exploreAllVideosThumbnails[index];
          return CustomRoundedContainer(
              width:128.w,
              height:169.h,
              borderRadius: AppSizes.borderRadiusXSmall.r,
              child: ClipRRect(
                  borderRadius:BorderRadius.circular(AppSizes.borderRadiusXSmall.r),
                  child: Image.asset(videoThumbnail)));
        },
      ),
    );
  }
}
