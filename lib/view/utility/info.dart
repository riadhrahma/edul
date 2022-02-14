import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:edule/theme/color.dart';

class Info extends StatelessWidget {
  final String title;
  final String subTitle;
  final InfoType infoType;

  const Info(
      {required this.title, required this.subTitle, required this.infoType})
      : super();

  @override
  Widget build(BuildContext context) {
    final errorVersion = ListTile(
      tileColor: errorColor,
      title: Text(title,style: Get.textTheme.subtitle1,),
      subtitle: Text(subTitle),
    );
    final successVersion = ListTile(
      tileColor: successColor,
      title: Text(title,style: Get.textTheme.headline6),
      subtitle: Text(subTitle),
    );
    final normalVersion = ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
    );
    switch (infoType) {
      case InfoType.error:
        return errorVersion;
      case InfoType.success:
        return successVersion;
      case InfoType.normal:
        return normalVersion;
      default:
        return normalVersion;
    }
  }
}

enum InfoType { error, success, normal }
