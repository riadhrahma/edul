import 'package:edule/routs.dart';
import 'package:edule/theme/color.dart';
import 'package:edule/theme/style.dart';
import 'package:edule/view/screen/main_page_wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      transitionDuration: Get.defaultTransitionDuration,
      title: 'edule',
      //initialRoute: '/MainPageWrapper',
      //routes: routs,
      initialRoute: Routes.initPage,
      routes: Routes.routs,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: mainColorSwatch,
          elevatedButtonTheme:
              ElevatedButtonThemeData(style: elevatedButtonStyle),
          inputDecorationTheme: inputDecorationTheme,
          fontFamily: 'Gordita'),
      defaultTransition: Transition.upToDown,
    );
  }
}
