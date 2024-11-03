import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/dimensions.dart';

class CustomImageError extends StatelessWidget {
  const CustomImageError({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius20(context)),
        border: Border.all(
          color: Colors.red,
          width: 2,
        ),
      ),
      child: const Icon(
        Icons.error_outline_outlined,
        color: Colors.red,
      ),
    );
  }
}
