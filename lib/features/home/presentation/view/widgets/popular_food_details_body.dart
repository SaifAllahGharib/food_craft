import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/assets.dart';
import 'package:food_craft/core/utils/dimensions.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_column.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_icon_button.dart';

class PopularFoodDetailsBody extends StatelessWidget {
  const PopularFoodDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: Dimensions.popularFoodImageSize(context),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppAssets.food1),
              ),
            ),
          ),
          Positioned(
            top: Dimensions.height45(context),
            left: Dimensions.width20(context),
            right: Dimensions.width20(context),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(icon: Icons.arrow_back_ios_new_outlined),
                CustomIconButton(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImageSize(context) -
                Dimensions.height20(context),
            child: Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20(context),
                left: Dimensions.width20(context),
                right: Dimensions.width20(context),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20(context)),
                  topLeft: Radius.circular(Dimensions.radius20(context)),
                ),
              ),
              child: const Column(
                children: [
                  CustomColumn(text: "Biriani"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
