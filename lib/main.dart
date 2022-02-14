import 'package:edule/routs.dart';
import 'package:edule/theme/color.dart';
import 'package:edule/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,

      defaultTransition: Transition.cupertino,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      transitionDuration: Get.defaultTransitionDuration,
      title: 'edule',
      initialRoute: '/',
      routes: routs,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: mainColorSwatch,
        elevatedButtonTheme: ElevatedButtonThemeData(style: elevatedButtonStyle),
        inputDecorationTheme: inputDecorationTheme,
        fontFamily: 'Gordita'

      ),

    );
  }
}
