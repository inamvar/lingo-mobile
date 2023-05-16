import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/LingoTheme.dart';

import 'infrastructure/Navigation/Routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var theme = LingoTheme();
    return GetMaterialApp(
      title: 'Lingo',
      textDirection: TextDirection.rtl,
      theme: theme.toThemeData(),
      initialRoute: Routes.authentication,
      getPages: Routes.navRoutes,
      debugShowCheckedModeBanner: false,
    );
  }
}
