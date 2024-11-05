import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/dimensions.dart';
import 'package:food_craft/core/widgets/row_location_and_time.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_text.dart';
import 'package:food_craft/features/home/presentation/view/widgets/row_stars_and_rate_and_comments.dart';

class CustomColumn extends StatelessWidget {
  final String text;

  const CustomColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: text,
          bigText: true,
        ),
        SizedBox(height: Dimensions.height10(context)),
        const RowStarsAndRateAndComments(),
        SizedBox(height: Dimensions.height15(context)),
        const RowLocationAndTime(),
      ],
    );
  }
}
