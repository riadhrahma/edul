import 'package:edule/model/singleton/scroll_view_controller.dart';
import 'package:edule/theme/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PreviewsFieldDesktop extends StatelessWidget {
  const PreviewsFieldDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () =>scrollViewController.previews(),
      child: const Icon(CupertinoIcons.chevron_left,color: Colors.black,size: 18,),
      style: elevatedButtonStyle3,
    );
  }
}
