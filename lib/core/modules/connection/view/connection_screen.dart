import 'package:cook_like_me/core/constants/app_assets.dart';
import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:cook_like_me/core/constants/app_texts.dart';
import 'package:cook_like_me/core/modules/connection/widgets/connection_scrollable_followers_list.dart';
import 'package:cook_like_me/core/modules/connection/widgets/connection_scrollable_following_list.dart';
import 'package:cook_like_me/core/modules/connection/widgets/connection_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ConnectionScreen extends StatefulWidget {
  const ConnectionScreen({super.key});

  @override
  State<ConnectionScreen> createState() => _ConnectionScreenState();
}

class _ConnectionScreenState extends State<ConnectionScreen>
    with TickerProviderStateMixin {
  /// Variable to Store Instance of Tab Controller Class
  late TabController _tabController;

  /// initState Method to Create Instance & And Register addListener Method
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
  }

  /// Dispose Function To Delete Instance
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// App Bar
      appBar: AppBar(
        backgroundColor: AppColors.black,
        leading: Transform.scale(
          scale: .3,
          child: GestureDetector(
              onTap:(){
                Get.back();
              },child: SvgPicture.asset(AppAssets.backIcon)),
        ),
        title: Text(
          AppTexts.dummyUser2,
          style: AppTextStyles.titleLargeTextStyle,
        ),
        centerTitle: true,
      ),

      /// Body
      body: Column(
        children: [

          /// Tab Bar
          ConnectionTabBar(tabController: _tabController),

          /// Tab Bar View
          Expanded(
            child:
            TabBarView(
              controller: _tabController,
              children: [

                // Scrollable Followers List
                ConnectionScrollableFollowersList(),

                // Scrollable Following List
                ConnectionScrollableFollowingList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



