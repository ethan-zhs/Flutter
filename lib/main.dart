import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'routes.dart';

void main() {
  // 设置状态栏颜色
  SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Note',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      initialRoute: '/note_list',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
