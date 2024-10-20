import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/colors.dart';
import 'package:food_craft/core/utils/functions/width.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_text.dart';

class RowStarsAndRateAndComments extends StatelessWidget {
  const RowStarsAndRateAndComments({super.key});

  @override
  Widget build(BuildContext context) {
    final double sizedBox = getWidth(context) * 0.027;
    return Wrap(
      children: [
        Wrap(
          children: List.generate(
            5,
            (index) => Icon(
              Icons.star,
              color: AppColors.primaryColor,
              size: getWidth(context) * 0.039,
            ),
          ),
        ),
        SizedBox(width: sizedBox),
        const CustomText(text: "4.5"),
        SizedBox(width: sizedBox),
        const CustomText(text: "1752"),
        SizedBox(width: sizedBox),
        const CustomText(text: "comments"),
      ],
    );
  }
}
