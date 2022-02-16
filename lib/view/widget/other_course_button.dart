import 'package:edule/theme/style.dart';
import 'package:flutter/material.dart';

class OtherCourseButton extends StatelessWidget {
  const OtherCourseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: OutlinedButton(
          style: outlinedButtonStyle4,

          onPressed: () {}, child: const Text('Other Course')),
    );
  }
}
