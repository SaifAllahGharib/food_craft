import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/dimensions.dart';
import 'package:food_craft/features/home/presentation/view/widgets/custom_column.dart';

class TextContainerPageView extends StatelessWidget {
  const TextContainerPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: Dimensions.pageViewTextContainer(context),
        margin: EdgeInsets.only(
          left: Dimensions.width30(context),
          right: Dimensions.width30(context),
          bottom: Dimensions.width15(context),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimensions.radius20(context)),
          boxShadow: const [
            BoxShadow(
              color: Color(0xffe8e8e8),
              blurRadius: 5,
              offset: Offset(0, 7),
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-2, 0),
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(2, 0),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.only(
            left: Dimensions.height12(context),
            right: Dimensions.height12(context),
            top: Dimensions.height15(context),
          ),
          child: const CustomColumn(text: "Chinese Side"),
        ),
      ),
    );
  }
}
