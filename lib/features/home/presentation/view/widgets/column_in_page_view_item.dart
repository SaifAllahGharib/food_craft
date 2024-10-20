import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/functions/height.dart';
import 'package:food_craft/core/utils/styles.dart';
import 'package:food_craft/core/widgets/row_location_and_time.dart';
import 'package:food_craft/features/home/presentation/view/widgets/row_stars_and_rate_and_comments.dart';

class ColumnInPageView extends StatelessWidget {
  const ColumnInPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Chinese Side",
          style: Styles.textStyle20(context),
        ),
        SizedBox(height: getHeight(context) * 0.010),
        const RowStarsAndRateAndComments(),
        SizedBox(height: getHeight(context) * 0.025),
        const RowLocationAndTime(),
      ],
    );
  }
}
