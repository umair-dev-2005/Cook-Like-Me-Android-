import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/common/widgets/containers/custom_circular_image_container.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/modules/inbox/controller/inbox_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_notification_item.dart';

class ScrollableNotificationsList extends StatelessWidget {
  const ScrollableNotificationsList({super.key});

  @override
  Widget build(BuildContext context) {

    /// Finding Instance of Inbox Controller
    final inBoxController = InBoxController.instance ;
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        return CustomNotificationItem(
          userImage: inBoxController.allNotificationsData[index]["user_image"],
          userName: inBoxController.allNotificationsData[index]["user_name"],
          notificationTime: inBoxController.allNotificationsData[index]["notification_time"],
          notification: inBoxController.allNotificationsData[index]["notification"],
          notificationIcon: inBoxController.allNotificationsData[index]["notification_icon"],
        );
      },
      separatorBuilder: (context, index) {
        return Divider(color: Color(0xff393532));
      },
    );
  }
}
