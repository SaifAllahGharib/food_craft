import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/styles.dart';

class CustomIconAndText extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color? color;

  const CustomIconAndText(
      {super.key, required this.text, required this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 18,
            color: color,
          ),
          const SizedBox(width: 5),
          Text(
            text,
            style: Styles.textStyle13,
          ),
        ],
      ),
    );
  }
}
