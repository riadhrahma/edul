
import 'package:edule/theme/color.dart';
import 'package:flutter/material.dart';

var elevatedButtonStyle = ElevatedButton.styleFrom(
  primary: mainColor,
  shadowColor: accentColor,
  onSurface: accentColor,
  onPrimary: accentColor,
  elevation: 0.0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
);
var elevatedButtonStyle2 = ElevatedButton.styleFrom(
  primary: scaffoldBackgroundColor,
  shadowColor: scaffoldBackgroundColor,
  onSurface: scaffoldBackgroundColor,
  onPrimary: scaffoldBackgroundColor,
  elevation: 0.0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
);

var elevatedButtonStyle3 = ElevatedButton.styleFrom(
  primary: Colors.white,
  shadowColor: scaffoldBackgroundColor,
  onSurface: scaffoldBackgroundColor,
  onPrimary: scaffoldBackgroundColor,
  elevation: 1.0,
  fixedSize: const Size(35, 35),
  shape: const CircleBorder(),
);
var inputDecorationTheme =  InputDecorationTheme(
  fillColor: Colors.white,
  hoverColor: Colors.white,
alignLabelWithHint: true,



  enabledBorder:  OutlineInputBorder(

    borderRadius: const BorderRadius.all( Radius.circular(12.0)),
    borderSide:  BorderSide(color: subtitleColor.withOpacity(0.5),width: 0.5),),
  focusedBorder:  const OutlineInputBorder(

    borderRadius: BorderRadius.all( Radius.circular(12.0)),
    borderSide:  BorderSide(color: mainColor,width: 0.7),),
  focusColor: Colors.white,
  filled: true,
  contentPadding:
      const EdgeInsets.only(bottom: 25.0, top: 25, left: 30.0, right: 30.0),
);
