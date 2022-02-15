import 'package:edule/model/singleton/page_view_controller.dart';
import 'package:edule/theme/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextField extends StatelessWidget {
  const NextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () =>pageViewController.next(),
      child: const Icon(CupertinoIcons.chevron_right,color: Colors.black,size: 18,),
      style: elevatedButtonStyle3,
    );
  }
}
