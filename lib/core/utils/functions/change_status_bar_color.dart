import 'package:flutter/services.dart';
import 'package:food_craft/core/utils/colors.dart';

void changeStatusBarColor() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColors.primaryColor,
      statusBarIconBrightness: Brightness.light,
    ),
  );
}
