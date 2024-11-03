import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/app_localizations.dart';
import 'package:food_craft/core/utils/dimensions.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_text.dart';

class PopularText extends StatelessWidget {
  const PopularText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomText(
          text: "popular".tr(context),
          bigText: true,
        ),
        SizedBox(width: Dimensions.width20(context)),
        const CustomText(
          text: ".",
          colorBigText: Colors.black26,
          bigText: true,
        ),
        SizedBox(width: Dimensions.width20(context)),
        CustomText(text: "food".tr(context)),
      ],
    );
  }
}
