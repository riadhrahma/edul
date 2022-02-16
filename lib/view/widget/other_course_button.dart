import 'package:edule/theme/style.dart';
import 'package:flutter/material.dart';

class OtherCourseButton extends StatelessWidget {
  const OtherCourseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: elevatedButtonStyle4,

        onPressed: () {}, child: const Text('Other Course'));
  }
}
