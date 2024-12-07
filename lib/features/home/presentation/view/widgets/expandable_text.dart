import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/colors.dart';
import 'package:food_craft/core/utils/dimensions.dart';
import 'package:food_craft/core/utils/styles.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final double maxHeight;

  const ExpandableText({
    super.key,
    required this.text,
    this.maxHeight = 80,
  });

  @override
  State<StatefulWidget> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText>
    with SingleTickerProviderStateMixin {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedSize(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
              child: ConstrainedBox(
                constraints: isExpanded
                    ? const BoxConstraints()
                    : BoxConstraints(maxHeight: widget.maxHeight),
                child: Text(
                  widget.text,
                  softWrap: true,
                  style: Styles.textStyle16(context)
                      .copyWith(color: AppColors.paraColor, height: 1.8),
                  maxLines: isExpanded ? widget.text.length : 4,
                  overflow:
                      isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Text(
                      isExpanded ? "Show less" : "Show more",
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: Dimensions.fontSize16(context)),
                    ),
                    Icon(
                      isExpanded
                          ? Icons.keyboard_arrow_up_rounded
                          : Icons.keyboard_arrow_down_rounded,
                      color: AppColors.primaryColor,
                      size: Dimensions.iconSize20(context),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
