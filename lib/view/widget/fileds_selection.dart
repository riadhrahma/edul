

import 'package:edule/model/singleton/page_view_controller.dart';
import 'package:edule/theme/color.dart';
import 'package:edule/view/widget/next_field.dart';
import 'package:edule/view/widget/previews_field.dart';
import 'package:flutter/material.dart';

import 'field_item.dart';

class FieldsSelection extends StatelessWidget {
  const FieldsSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: scaffoldBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const PreviewsField(),
            Flexible(
                child: SizedBox(
                  height: 60,
                  child: PageView(
                    controller: pageViewController.pageController,
              children: const [FieldItem(field: 'UI/UX Design',)],
            ),
                )),
            const NextField(),

          ],
        ),
      ),
    );
  }
}


