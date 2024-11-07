import 'package:flutter/material.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_bottom_navigation_bar.dart';
import 'package:food_craft/features/home/presentation/view/widgets/popular_food_details_body.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PopularFoodDetailsBody(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
