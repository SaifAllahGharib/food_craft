import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/functions/height.dart';
import 'package:food_craft/features/home/presentation/view/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(context) * 0.35,
      child: PageView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => const PageViewItem(),
      ),
    );
  }
}
