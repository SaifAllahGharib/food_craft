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
          width: Dimensions.listViewImage(context),
          height: Dimensions.listViewImage(context),
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
            height: Dimensions.listViewColumn(context),
            padding: EdgeInsets.all(Dimensions.width20(context)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimensions.radius15(context)),
                bottomRight: Radius.circular(Dimensions.radius15(context)),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xffe8e8e8),
                  blurRadius: 5,
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomText(
                    text: "Nutritious fruit meal in China",
                    textOverflow: TextOverflow.ellipsis,
                    bigText: true,
                  ),
                  SizedBox(height: Dimensions.height10(context)),
                  const CustomText(
                    text: "With chinese characteristics",
                    textOverflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: Dimensions.height10(context)),
                  const RowLocationAndTime(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
