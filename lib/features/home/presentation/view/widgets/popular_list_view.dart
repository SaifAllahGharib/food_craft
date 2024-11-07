import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/dimensions.dart';
import 'package:food_craft/features/home/presentation/view/popular_food_details.dart';
import 'package:food_craft/features/home/presentation/view/widgets/popular_list_view_item.dart';
import 'package:go_router/go_router.dart';

class PopularListView extends StatelessWidget {
  const PopularListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: Dimensions.height10(context)),
          child: GestureDetector(
            child: const PopularListViewItem(),
            onTap: () {
              GoRouter.of(context).push(PopularFoodDetails.id);
            },
          ),
        );
      },
    );
  }
}
