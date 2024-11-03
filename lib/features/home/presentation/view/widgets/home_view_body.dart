import 'package:flutter/material.dart';
import 'package:food_craft/constant.dart';
import 'package:food_craft/core/utils/dimensions.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_app_bar_home_view.dart';
import 'package:food_craft/features/home/presentation/view/widgets/page_view_section.dart';
import 'package:food_craft/features/home/presentation/view/widgets/popular_list_view.dart';
import 'package:food_craft/features/home/presentation/view/widgets/popular_text.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 15),
      padding:
          const EdgeInsets.only(left: primaryPadding, right: primaryPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const CustomAppBarHomeView(),
                SizedBox(height: Dimensions.height20(context)),
                const PageViewSection(),
                SizedBox(height: Dimensions.height30(context)),
                const PopularText(),
                SizedBox(height: Dimensions.height30(context)),
              ],
            ),
          ),
          const PopularListView()
        ],
      ),
    );
  }
}
