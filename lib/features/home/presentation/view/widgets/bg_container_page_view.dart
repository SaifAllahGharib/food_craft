import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/assets.dart';
import 'package:food_craft/core/utils/dimensions.dart';

class BgContainerPageView extends StatelessWidget {
  const BgContainerPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.pageViewContainer(context),
      margin: EdgeInsets.symmetric(horizontal: Dimensions.width10(context)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius30(context)),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppAssets.food1),
        ),
      ),
    );
  }
}
