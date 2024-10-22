import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/dimensions.dart';
import 'package:food_craft/features/home/presentation/view/widgets/bg_container_page_view.dart';
import 'package:food_craft/features/home/presentation/view/widgets/text_container_page_view.dart';

class PageViewItem extends StatelessWidget {
  final double currentPage;
  final int index;
  final PageController pageController;
  final double scaleFactor = 0.73;

  const PageViewItem({
    super.key,
    required this.currentPage,
    required this.index,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, child) {
        List<double> scaleAndTranslation = getScaleAndTranslation(context);

        return Transform(
          transform: Matrix4.diagonal3Values(1, scaleAndTranslation[0], 1)
            ..setTranslationRaw(0, scaleAndTranslation[1], 0),
          child: child,
        );
      },
      child: const Stack(
        children: [
          BgContainerPageView(),
          TextContainerPageView(),
        ],
      ),
    );
  }

  List<double> getScaleAndTranslation(BuildContext context) {
    double height = Dimensions.pageViewContainer(context);
    double scale = scaleFactor;
    double translation = height * (1 - scaleFactor) / 2;

    if (index == currentPage.floor()) {
      scale = 1 - (currentPage - index) * (1 - scaleFactor);
      translation = height * (1 - scale) / 2;
    } else if (index == currentPage.floor() + 1) {
      scale = scaleFactor + (currentPage - index + 1) * (1 - scaleFactor);
      translation = height * (1 - scale) / 2;
    }

    return [scale, translation];
  }
}
