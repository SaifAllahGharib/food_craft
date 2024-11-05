import 'package:flutter/material.dart';

abstract class Dimensions {
  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double pageView(BuildContext context) {
    return getHeight(context) / 2.9;
  }

  static double pageViewContainer(BuildContext context) {
    return getHeight(context) / 3.84;
  }

  static double pageViewTextContainer(BuildContext context) {
    return getHeight(context) / 7.03;
  }

  // Dynamic height padding and margin
  static double height10(BuildContext context) {
    return getHeight(context) / 84.4;
  }

  static double height12(BuildContext context) {
    return getHeight(context) / 70;
  }

  static double height15(BuildContext context) {
    return getHeight(context) / 56.27;
  }

  static double height20(BuildContext context) {
    return getHeight(context) / 42.2;
  }

  static double height30(BuildContext context) {
    return getHeight(context) / 28.13;
  }

  static double height45(BuildContext context) {
    return getHeight(context) / 18.76;
  }

  // Dynamic width padding and margin
  static double width10(BuildContext context) {
    return getWidth(context) / 84.4;
  }

  static double width15(BuildContext context) {
    return getWidth(context) / 56.27;
  }

  static double width20(BuildContext context) {
    return getWidth(context) / 42.2;
  }

  static double width30(BuildContext context) {
    return getWidth(context) / 28.13;
  }

  // Dynamic font size
  static double fontSize12(BuildContext context) {
    return getHeight(context) / 65;
  }

  static double fontSize20(BuildContext context) {
    return getHeight(context) / 42.2;
  }

  // Dynamic radius
  static double radius15(BuildContext context) {
    return getHeight(context) / 56.27;
  }

  static double radius20(BuildContext context) {
    return getHeight(context) / 42.2;
  }

  static double radius30(BuildContext context) {
    return getHeight(context) / 28.13;
  }

  // Dynamic icon size
  static double iconSize16(BuildContext context) {
    return getHeight(context) / 52.75;
  }

  static double iconSize20(BuildContext context) {
    return getHeight(context) / 42.2;
  }

  static double iconSize24(BuildContext context) {
    return getHeight(context) / 35.17;
  }

  // List view size
  static double listViewImage(BuildContext context) {
    return getWidth(context) / 3.25;
  }

  static double listViewColumn(BuildContext context) {
    return getWidth(context) / 3.9;
  }

  // Popular Food details size
  static double popularFoodImageSize(BuildContext context) {
    return getHeight(context) / 2.41;
  }
}
