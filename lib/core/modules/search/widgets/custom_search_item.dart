import 'package:cook_like_me/core/constants/app_colors.dart';
import 'package:cook_like_me/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';


class CustomSearchItem extends StatelessWidget {
  final String searchText;
  const CustomSearchItem({
    super.key,
    required this.searchText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        // Previous Search And Close Icon
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(searchText,style:
            AppTextStyles.supportingTextStyle
            ),

            Icon(Icons.close,color: AppColors.secondaryColor,),
          ],
        ),
        Divider(
          color: Colors.grey.withValues(alpha: .6),
        )
      ],
    );
  }
}
