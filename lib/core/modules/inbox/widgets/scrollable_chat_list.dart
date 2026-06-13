import 'package:cook_like_me/core/common/widgets/app%20spacing/app_spacing.dart';
import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/modules/chat/controller/chat_controller.dart';
import 'package:cook_like_me/core/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'custom_message_item.dart';

class ScrollableChatList extends StatelessWidget {
  const ScrollableChatList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace/2.w),
        itemCount: 10,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              Get.toNamed(RouteNames.chatScreen, arguments:AppTexts.dummyUser1 ,);
            },
            child: CustomMessageItem(
              imagePath: AppAssets.userImage,
              userName: AppTexts.dummyUser1,
              userMessage: AppTexts.dummyMessage,
              messageReceivedTime: '10:20 pm',
            ),
          );
        },
        separatorBuilder:(context,index){
          return AppSpacing.getHeight(height: AppSizes.spaceBtwItems.w);
        }
    );
  }
}
