import 'package:edule/asstes.dart';
import 'package:edule/theme/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EduleCoursesCount extends StatelessWidget {
  const EduleCoursesCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: mainColor),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Icon(
                      CupertinoIcons.book,
                      color: Colors.white,
                      size: 34,
                    ),
                  ),
                  Text(
                    '1,235',
                    style: Get.textTheme.headline4!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'courses',
                    style: Get.textTheme.subtitle1!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w100),
                  )
                ],
              ),
            ),
          ),
        ),
        Image.asset(
          shape6,
          scale: 1,
        )
      ],
    );
  }
}
