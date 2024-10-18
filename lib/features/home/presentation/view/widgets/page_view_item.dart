import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/assets.dart';
import 'package:food_craft/core/utils/functions/height.dart';
import 'package:food_craft/core/utils/functions/width.dart';
import 'package:food_craft/features/home/presentation/view/widgets/column_in_page_view_item.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: getHeight(context) * 0.31,
          margin: const EdgeInsets.only(left: 5, right: 5),
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
            height: getHeight(context) * 0.16,
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 10),
            margin: EdgeInsets.only(
              left: getWidth(context) * 0.050,
              right: getWidth(context) * 0.050,
              bottom: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 3,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: const SingleChildScrollView(
              child: ColumnInPageView(),
            ),
          ),
        ),
      ],
    );
  }
}
