import 'package:edule/view/screen/mobile/main_page.dart';
import 'package:edule/view/screen/desktop/main_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainPageWrapper extends StatelessWidget {
  const MainPageWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(

      mobile: OrientationLayoutBuilder(
        portrait: (BuildContext context) => const MainPage(),
      ),
      tablet: OrientationLayoutBuilder(
        portrait: (BuildContext context) => const MainPageDesktop(),
      ),
      desktop: OrientationLayoutBuilder(
        portrait: (BuildContext context) => const MainPageDesktop(),
      ),
    );
  }
}
