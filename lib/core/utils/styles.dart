import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/colors.dart';
import 'package:food_craft/core/utils/functions/width.dart';

class Styles {
  static TextStyle textStyle13(BuildContext context) {
    return TextStyle(
      fontSize: getWidth(context) * 0.0321,
      fontFamily: "Roboto",
      color: AppColors.textColor,
      height: 1.2,
    );
  }

  static TextStyle textStyle20(BuildContext context) {
    return TextStyle(
      fontSize: getWidth(context) * 0.05,
      color: Colors.black,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w400,
    );
  }
}
