import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

void changeStatusBarColor() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: CupertinoColors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
}
