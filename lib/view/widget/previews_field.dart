import 'package:edule/model/singleton/page_view_controller.dart';
import 'package:edule/theme/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PreviewsField extends StatelessWidget {
  const PreviewsField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () =>pageViewController.previews(),
      child: const Icon(CupertinoIcons.chevron_left,color: Colors.black,size: 18,),
      style: elevatedButtonStyle3,
    );
  }
}
