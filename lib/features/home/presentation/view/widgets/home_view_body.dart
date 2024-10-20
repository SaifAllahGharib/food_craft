import 'package:flutter/material.dart';
import 'package:food_craft/constant.dart';
import 'package:food_craft/core/utils/colors.dart';
import 'package:food_craft/core/utils/functions/height.dart';
import 'package:food_craft/core/utils/functions/width.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_app_bar_home_view.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final int countOfPage = 5;
  late PageController _pageController;
  double _currentPage = 2;

  @override
  void initState() {
    initAndListenPageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double dotSize = getWidth(context) * 0.03;
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 15),
      padding:
          const EdgeInsets.only(left: primaryPadding, right: primaryPadding),
      child: Column(
        children: [
          const CustomAppBarHomeView(),
          SizedBox(height: getHeight(context) * 0.05),
          CustomPageView(
            pageController: _pageController,
            currentPage: _currentPage,
            countOfPage: countOfPage,
          ),
          SizedBox(height: getHeight(context) * 0.025),
          SmoothPageIndicator(
            controller: _pageController,
            count: countOfPage,
            effect: SwapEffect(
              activeDotColor: AppColors.primaryColor,
              spacing: 13,
              dotWidth: dotSize,
              dotHeight: dotSize,
              type: SwapType.yRotation,
            ),
            onDotClicked: (index) {
              onClickInDot(index);
            },
          ),
        ],
      ),
    );
  }

  void initAndListenPageController() {
    _pageController = PageController(viewportFraction: 0.85, initialPage: 2)
      ..addListener(
        () {
          _currentPage = _pageController.page!;
          setState(() {});
        },
      );
  }

  void onClickInDot(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
