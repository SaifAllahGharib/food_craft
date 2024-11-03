import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/colors.dart';
import 'package:food_craft/core/utils/dimensions.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewSection extends StatefulWidget {
  const PageViewSection({super.key});

  @override
  State<PageViewSection> createState() => _PageViewSectionState();
}

class _PageViewSectionState extends State<PageViewSection> {
  final int countOfPage = 5;
  late PageController _pageController;
  late ValueNotifier<double> _currentPageNotifier;

  @override
  void initState() {
    initPageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.removeListener(_pageListener);
    _pageController.dispose();
    _currentPageNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ValueListenableBuilder(
          valueListenable: _currentPageNotifier,
          builder: (context, value, child) {
            return CustomPageView(
              pageController: _pageController,
              currentPage: value,
              countOfPage: countOfPage,
            );
          },
        ),
        SizedBox(height: Dimensions.height30(context)),
        SmoothPageIndicator(
          controller: _pageController,
          count: countOfPage,
          effect: ExpandingDotsEffect(
            activeDotColor: AppColors.primaryColor,
            spacing: Dimensions.width30(context),
            dotWidth: Dimensions.width20(context),
            dotHeight: Dimensions.width20(context),
            expansionFactor: 2,
          ),
          onDotClicked: (index) {
            onClickInDot(index);
          },
        ),
      ],
    );
  }

  void _pageListener() {
    _currentPageNotifier.value = _pageController.page!;
  }

  void onClickInDot(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void initPageController() {
    _pageController = PageController(viewportFraction: 0.85, initialPage: 2);
    _currentPageNotifier =
        ValueNotifier<double>(_pageController.initialPage.toDouble());
    _pageController.addListener(_pageListener);
  }
}
