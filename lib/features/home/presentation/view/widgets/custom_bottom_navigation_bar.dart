import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/colors.dart';
import 'package:food_craft/core/utils/dimensions.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_icon_button.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_text.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height130(context),
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.width30(context),
        vertical: Dimensions.height20(context),
      ),
      decoration: BoxDecoration(
        color: AppColors.buttonBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.radius20(context) * 2),
          topRight: Radius.circular(Dimensions.radius20(context) * 2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(Dimensions.height10(context)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20(context)),
              color: Colors.white,
            ),
            child: Row(
              children: [
                CustomIconButton(
                  icon: Icons.remove,
                  bgColor: Colors.white,
                  onPressed: () {},
                ),
                SizedBox(width: Dimensions.width10(context)),
                const CustomText(
                  text: "0",
                  colorSmallText: Colors.black,
                  bigText: true,
                ),
                SizedBox(width: Dimensions.width10(context)),
                CustomIconButton(
                  icon: Icons.add,
                  bgColor: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: AppColors.primaryColor,
            padding: EdgeInsets.all(Dimensions.height15(context)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius20(context)),
            ),
            child: const CustomText(
              text: "\$0.8 Add to cart",
              bigText: true,
              colorBigText: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
