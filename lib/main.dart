import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_craft/core/utils/functions/change_status_bar_color.dart';
import 'package:food_craft/core/utils/functions/init_app.dart';
import 'package:food_craft/core/utils/functions/set_portrait_orientation.dart';
import 'package:food_craft/core/utils/routes.dart';

void main() async {
  initApp();
  changeStatusBarColor();
  setPortraitOrientation();
  // await initFirebase();

  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            useMaterial3: true,
          ),
          routerConfig: AppRouter.routes,
        );
      },
    );
  }
}
