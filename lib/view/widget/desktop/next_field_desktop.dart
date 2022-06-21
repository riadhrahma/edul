import 'package:edule/model/singleton/scroll_view_controller.dart';
import 'package:edule/theme/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextFieldDesktop extends StatelessWidget {
  const NextFieldDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => scrollViewController.next(),
      child: const Icon(
        CupertinoIcons.chevron_right,
        color: Colors.black,
        size: 18,
      ),
      style: elevatedButtonStyle3,
    );
  }
}
