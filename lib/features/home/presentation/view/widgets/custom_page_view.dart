import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/functions/height.dart';
import 'package:food_craft/features/home/presentation/view/widgets/page_view_item.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({super.key});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  late PageController _pageController;
  double currentPage = 0;

  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.85, initialPage: 3)
      ..addListener(
        () {
          currentPage = _pageController.page!;
          setState(() {});
        },
      );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      height: getHeight(context) * 0.40,
      child: PageView.builder(
        controller: _pageController,
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) => const PageViewItem(),
      ),
    );
  }
}
