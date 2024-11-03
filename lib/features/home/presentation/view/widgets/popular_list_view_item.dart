import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/assets.dart';
import 'package:food_craft/core/utils/dimensions.dart';
import 'package:food_craft/core/widgets/row_location_and_time.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_text.dart';

class PopularListViewItem extends StatelessWidget {
  const PopularListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: Dimensions.height120(context),
          height: Dimensions.height120(context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius20(context)),
            color: Colors.white38,
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppAssets.food1),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(Dimensions.width15(context)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimensions.radius15(context)),
                bottomRight: Radius.circular(Dimensions.radius15(context)),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xffe8e8e8),
                  blurRadius: 15,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: "sdfsdfsdfsd",
                  bigText: true,
                ),
                SizedBox(height: Dimensions.height10(context)),
                const CustomText(text: "sdfsdfa;sdausdjalsdlasd"),
                SizedBox(height: Dimensions.height10(context)),
                const RowLocationAndTime(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
