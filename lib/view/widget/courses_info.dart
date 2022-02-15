import 'package:edule/asstes.dart';
import 'package:edule/view/widget/edule_courses_count.dart';
import 'package:edule/view/widget/edule_tutorial_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoursesInfo extends StatelessWidget {
  const CoursesInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 19, bottom: 19, right: 16, left: 16),
                    child: Text(
                      'Start A Course',
                      style: Get.textTheme.subtitle2!
                          .copyWith(color: Colors.white),
                    ),
                  )),
            ),
            Stack(
              children: [
                Image.asset(shape9),
                Positioned(
                    top: 100,
                    left: 45,
                    child: EduleTutorialButton(
                      action: () {},
                    ))
              ],
            )
          ],
        )),
        Flexible(
            child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Transform.translate(
              offset: const Offset(-30, -170),
              child: const EduleCoursesCount(),
            ),
            Positioned(
              child: Image.asset(slider),
            ),
          ],
        ))
      ],
    );
  }
}