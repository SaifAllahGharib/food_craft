import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/functions/height.dart';
import 'package:food_craft/features/home/presentation/view/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  final PageController pageController;
  final double currentPage;
  final int countOfPage;

  const CustomPageView({
    super.key,
    required this.pageController,
    required this.currentPage,
    required this.countOfPage,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(context) * 0.36,
      child: PageView.builder(
        controller: pageController,
        itemCount: countOfPage,
        itemBuilder: (context, index) => PageViewItem(
          pageController: pageController,
          currentPage: currentPage,
          index: index,
        ),
      ),
    );
  }
}
