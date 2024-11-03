import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/colors.dart';
import 'package:food_craft/core/utils/styles.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color colorBigText;
  final Color colorSmallText;
  final bool bigText;

  const CustomText({
    super.key,
    required this.text,
    this.bigText = false,
    this.colorBigText = Colors.black,
    this.colorSmallText = AppColors.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: bigText
          ? Styles.textStyle20(context).copyWith(color: colorBigText)
          : Styles.textStyle12(context).copyWith(color: colorSmallText),
    );
  }
}
