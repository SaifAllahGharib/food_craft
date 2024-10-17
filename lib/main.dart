import 'package:flutter/material.dart';
import 'package:food_craft/core/utils/functions/change_status_bar_color.dart';
import 'package:food_craft/core/utils/functions/init_app.dart';
import 'package:food_craft/core/utils/functions/set_portrait_orientation.dart';
import 'package:food_craft/core/utils/routes.dart';

import 'core/utils/functions/init_firebase.dart';

void main() async {
  initApp();
  changeStatusBarColor();
  setPortraitOrientation();
  await initFirebase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.routes,
    );
  }
}
