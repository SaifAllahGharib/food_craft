import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/app_localizations.dart';
import 'package:food_craft/core/utils/colors.dart';
import 'package:food_craft/core/utils/dimensions.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_text.dart';

class RowStarsAndRateAndComments extends StatelessWidget {
  const RowStarsAndRateAndComments({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Wrap(
          children: List.generate(
            5,
            (index) => Icon(
              Icons.star,
              color: AppColors.primaryColor,
              size: Dimensions.iconSize20(context),
            ),
          ),
        ),
        SizedBox(width: Dimensions.width10(context)),
        const CustomText(text: "4.5"),
        SizedBox(width: Dimensions.width10(context)),
        const CustomText(text: "1752"),
        CustomText(text: " ${"comments".tr(context)}"),
      ],
    );
  }
}
