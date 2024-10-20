import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/colors.dart';
import 'package:food_craft/core/utils/functions/width.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_icon_and_text.dart';

class RowLocationAndTime extends StatelessWidget {
  const RowLocationAndTime({super.key});

  @override
  Widget build(BuildContext context) {
    final double sizedBox = getWidth(context) * 0.027;
    return Row(
      children: [
        Expanded(
          child: Wrap(
            children: [
              const CustomIconAndText(
                text: "Normal",
                icon: Icons.circle,
                color: AppColors.yellowColor,
              ),
              SizedBox(width: sizedBox),
              const CustomIconAndText(
                text: "1.7 km",
                icon: Icons.location_on_rounded,
                color: AppColors.primaryColor,
              ),
              SizedBox(width: sizedBox),
              const CustomIconAndText(
                text: "32 m",
                icon: Icons.access_time_rounded,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
