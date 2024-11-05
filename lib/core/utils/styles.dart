import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/colors.dart';
import 'package:food_craft/core/utils/dimensions.dart';

class Styles {
  static TextStyle textStyle12(BuildContext context) {
    return TextStyle(
      fontSize: Dimensions.fontSize12(context),
      fontFamily: "Roboto",
      color: AppColors.textColor,
      height: 1.2,
    );
  }

  static TextStyle textStyle20(BuildContext context) {
    return TextStyle(
      fontSize: Dimensions.fontSize20(context),
      color: Colors.black,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w500,
    );
  }
}
