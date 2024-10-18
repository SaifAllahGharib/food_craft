import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/colors.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_text.dart';

class RowStarsAndRateAndComments extends StatelessWidget {
  const RowStarsAndRateAndComments({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Wrap(
          children: List.generate(
            5,
            (index) => const Icon(
              Icons.star,
              color: AppColors.primaryColor,
              size: 15,
            ),
          ),
        ),
        const SizedBox(width: 10),
        const CustomText(text: "4.5"),
        const SizedBox(width: 10),
        const CustomText(text: "1752"),
        const SizedBox(width: 10),
        const CustomText(text: "comments"),
      ],
    );
  }
}
