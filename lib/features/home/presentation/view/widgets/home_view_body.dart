import 'package:flutter/material.dart';
import 'package:food_craft/constant.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_app_bar_home_view.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_page_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 15),
      padding:
          const EdgeInsets.only(left: primaryPadding, right: primaryPadding),
      child: const Column(
        children: [
          CustomAppBarHomeView(),
          SizedBox(height: 40),
          CustomPageView(),
        ],
      ),
    );
  }
}
