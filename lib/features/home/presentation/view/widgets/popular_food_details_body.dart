import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/assets.dart';
import 'package:food_craft/core/utils/dimensions.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_column.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_icon_button.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_text.dart';
import 'package:food_craft/features/home/presentation/view/widgets/expandable_text.dart';
import 'package:go_router/go_router.dart';

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  icon: Icons.arrow_back_ios_new_outlined,
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                ),
                CustomIconButton(
                  icon: Icons.shopping_cart_outlined,
                  onPressed: () {},
                ),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomColumn(text: "Biriani"),
                  SizedBox(height: Dimensions.height20(context)),
                  const CustomText(
                    text: "Introduce",
                    bigText: true,
                  ),
                  SizedBox(height: Dimensions.height15(context)),
                  const ExpandableText(
                    text:
                        "sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss",
                  ),
                  SizedBox(height: Dimensions.height15(context)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
