import 'package:flutter/material.dart';

const Color mainColor = Color(0xff2C9844);

final Map<int, Color> _mainColorMap = {
  50: const Color(0xFFFFD7C2),
  100: mainColor,
  200: mainColor,
  300: mainColor,
  400: mainColor,
  500: mainColor,
  600: mainColor,
  700: mainColor,
  800: mainColor,
  900: mainColor,
};

final MaterialColor mainColorSwatch =
    MaterialColor(mainColor.value, _mainColorMap);

const Color successColor = Color(0x2a22bb33);
const Color errorColor = Color(0x2abb2124);
const Color scaffoldBackgroundColor = Color(0xffEEFBF3);
const Color subtitleColor=Color(0xff52565b);
const Color accentColor=Color(0xff242B34);
