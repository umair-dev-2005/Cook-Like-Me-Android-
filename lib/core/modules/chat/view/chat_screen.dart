import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_sizes.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/modules/chat/controller/chat_controller.dart';
import 'package:cook_like_me/core/modules/chat/widgets/chat_text_field.dart';
import 'package:cook_like_me/core/modules/chat/widgets/custom_receive_chat_bubble.dart';
import 'package:cook_like_me/core/modules/chat/widgets/custom_send_chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ChatScreen extends StatelessWidget {
  final String userName;

  const ChatScreen({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    /// Finding Instance of Chat Controller
    final chatController = ChatController.instance;
    return Scaffold(
      backgroundColor: AppColors.charcoalGray.withValues(alpha: .5),

      /// App Bar
      appBar: AppBar(
        backgroundColor: AppColors.black,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Transform.scale(
            scale: .4,
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: SvgPicture.asset(AppAssets.backIcon),
            ),
          ),
        ),
        title: Text(
          chatController.userName,
          style: AppTextStyles.titleLargeTextStyle,
        ),
        centerTitle: true,
      ),

      /// Body
      body: Stack(
        children: [
          ///...........[First Layer ].......... Scrollable Chat List
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.w),
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomSendChatBubble(sendMessage: 'Assalam-o-Alaikum!'),
                    CustomReceiveChatBubble(
                      receiveMessage: 'W.Salam Jnab ! , kiya hal hai ',
                    ),
                    CustomSendChatBubble(
                      sendMessage: 'Alhamdulillah main thek ap sunao .?',
                    ),
                    CustomReceiveChatBubble(
                      receiveMessage: "Main Bhe thek hon",
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Text Field For Message Writing
          ChatTextField(),
        ],
      ),
    );
  }
}
