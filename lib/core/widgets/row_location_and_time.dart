import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/colors.dart';
import 'package:food_craft/core/utils/dimensions.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_icon_and_text.dart';

class RowLocationAndTime extends StatelessWidget {
  const RowLocationAndTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        const CustomIconAndText(
          text: "Normal",
          icon: Icons.circle,
          color: AppColors.yellowColor,
        ),
        SizedBox(width: Dimensions.width20(context)),
        const CustomIconAndText(
          text: "1.7 km",
          icon: Icons.location_on_rounded,
          color: AppColors.primaryColor,
        ),
        SizedBox(width: Dimensions.width20(context)),
        const CustomIconAndText(
          text: "32 m",
          icon: Icons.access_time_rounded,
          color: Colors.red,
        ),
      ],
    );
  }
}
