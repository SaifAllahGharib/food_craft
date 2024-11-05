import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/dimensions.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;

  const CustomIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Dimensions.height45(context) / 2),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
        child: Container(
          width: Dimensions.height45(context),
          height: Dimensions.height45(context),
          decoration: const BoxDecoration(
            color: Color(0x71fcf4e4),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: const Color(0xff756d54),
              size: Dimensions.iconSize16(context),
            ),
          ),
        ),
      ),
    );
  }
}
