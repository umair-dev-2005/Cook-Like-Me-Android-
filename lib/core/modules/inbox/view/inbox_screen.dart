import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/containers/custom_circular_image_container.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/modules/inbox/widgets/custom_notification_item.dart';
import 'package:cook_like_me/core/modules/inbox/widgets/scrollable_notifications_list.dart';
import 'package:cook_like_me/core/modules/inbox/widgets/scrollable_chat_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        /// App Bar
        appBar: AppBar(
          backgroundColor: AppColors.black,
          title: Text(AppTexts.inbox, style: AppTextStyles.titleLargeTextStyle),
          centerTitle: true,
        ),

        /// Body
        body: Column(
          children: [
            /// Tab Bar
            Container(
              width: 393.w,
              height: 40.h,
              color: Color(0xff393532),
              child: TabBar(
                indicatorColor: AppColors.secondaryColor,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: EdgeInsets.only(
                  top: AppSizes.paddingXLarge * 2.h,
                ),
                dividerColor: AppColors.transparent,
                tabs: [
                  Text(
                    AppTexts.messages,
                    style: AppTextStyles.titleLargeTextStyle,
                  ),
                  Text(
                    AppTexts.notifications,
                    style: AppTextStyles.titleLargeTextStyle,
                  ),
                ],
              ),
            ),

            AppSpacing.getHeight(height: AppSizes.spaceBtwItems.h),

            /// Tab Bar View
            Expanded(
              child: TabBarView(
                children: [
                  // Scrollable List of All Chats
                  ScrollableChatList(),

                  // Scrollable List Of All Notifications
                  ScrollableNotificationsList()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

