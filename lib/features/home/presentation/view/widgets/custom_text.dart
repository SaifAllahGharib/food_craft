import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/styles.dart';

class CustomText extends StatelessWidget {
  final String text;

  const CustomText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.textStyle12(context),
    );
  }
}
