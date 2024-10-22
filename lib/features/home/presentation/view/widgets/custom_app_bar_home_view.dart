import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/colors.dart';
import 'package:food_craft/core/utils/dimensions.dart';
import 'package:food_craft/core/utils/styles.dart';

class CustomAppBarHomeView extends StatelessWidget {
  const CustomAppBarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
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
                    style: Styles.textStyle12(context)
                        .copyWith(color: Colors.black54),
                  ),
                  const Icon(Icons.arrow_drop_down_rounded),
                ],
              ),
            ],
          ),
          Container(
            width: Dimensions.height45(context),
            height: Dimensions.height45(context),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(Dimensions.radius15(context)),
            ),
            child: Icon(
              Icons.search_rounded,
              color: Colors.white,
              size: Dimensions.iconSize24(context),
            ),
          ),
        ],
      ),
    );
  }
}
