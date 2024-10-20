import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/assets.dart';
import 'package:food_craft/core/utils/functions/height.dart';
import 'package:food_craft/core/utils/functions/width.dart';
import 'package:food_craft/features/home/presentation/view/widgets/column_in_page_view_item.dart';

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
    final double height = getHeight(context) * 0.27;
    final padding = getWidth(context) * 0.030;

    return AnimatedBuilder(
      animation: pageController,
      builder: (context, child) {
        double scale = scaleFactor;
        double translation = height * (1 - scaleFactor) / 2;

        if (index == currentPage.floor()) {
          scale = 1 - (currentPage - index) * (1 - scaleFactor);
          translation = height * (1 - scale) / 2;
        } else if (index == currentPage.floor() + 1) {
          scale = scaleFactor + (currentPage - index + 1) * (1 - scaleFactor);
          translation = height * (1 - scale) / 2;
        }

        return Transform(
          transform: Matrix4.diagonal3Values(1, scale, 1)
            ..setTranslationRaw(0, translation, 0),
          child: child,
        );
      },
      child: Stack(
        children: [
          Container(
            height: height,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppAssets.food1),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: getHeight(context) * 0.15,
              padding: EdgeInsets.all(padding),
              margin: EdgeInsets.only(
                left: getWidth(context) * 0.05,
                right: getWidth(context) * 0.05,
                bottom: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffe8e8e8),
                    blurRadius: 5,
                    offset: Offset(0, 7),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                ],
              ),
              child: const SingleChildScrollView(
                child: ColumnInPageView(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
