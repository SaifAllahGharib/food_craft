import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/colors.dart';
import 'package:food_craft/core/utils/functions/width.dart';
import 'package:food_craft/core/utils/styles.dart';

class CustomAppBarHomeView extends StatelessWidget {
  const CustomAppBarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final double sizeContainer = (getWidth(context) * 0.11).floorToDouble();
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Bangladesh",
                style: Styles.textStyle20(context)
                    .copyWith(color: AppColors.primaryColor),
              ),
              Row(
                children: [
                  Text(
                    "Narsingidi",
                    style: Styles.textStyle13(context)
                        .copyWith(color: Colors.black54),
                  ),
                  const Icon(Icons.arrow_drop_down_rounded),
                ],
              ),
            ],
          ),
          Container(
            width: sizeContainer,
            height: sizeContainer,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: getWidth(context) * 0.064,
            ),
          ),
        ],
      ),
    );
  }
}
