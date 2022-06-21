import 'dart:async';

import 'package:edule/model/singleton/scroll_view_controller.dart';
import 'package:edule/theme/color.dart';
import 'package:edule/view/widget/desktop/field_item_desktop.dart';
import 'package:edule/view/widget/desktop/next_field_desktop.dart';
import 'package:edule/view/widget/desktop/previews_field_desktop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FieldsSelectionDesktop extends StatelessWidget {


  const FieldsSelectionDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          color: scaffoldBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const PreviewsFieldDesktop(),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: SizedBox(
                height: 60,
                width: screenSize.width,
                child: ListView(
                  controller: scrollViewController.scrollController,
                  scrollDirection: Axis.horizontal,


                    children: const [
                      FieldItemDesktop(
                        field: 'UI/UX Design',
                      ),
                      FieldItemDesktop(
                        field: 'UI/UX Design',
                      ),
                      FieldItemDesktop(
                        field: 'UI/UX Design',
                      ),
                      FieldItemDesktop(
                        field: 'UI/UX Design',
                      ),
                      FieldItemDesktop(
                        field: 'UI/UX Design',
                      ),
                      FieldItemDesktop(
                        field: 'UI/UX Design',
                      ),
                      FieldItemDesktop(
                        field: 'UI/UX Design',
                      ),
                      FieldItemDesktop(
                        field: 'UI/UX Design',
                      ),
                      FieldItemDesktop(
                        field: 'UI/UX Design',
                      ),
                      FieldItemDesktop(
                        field: 'UI/UX Design',
                      ),
                      FieldItemDesktop(
                        field: 'UI/UX Design',
                      ),
                      FieldItemDesktop(
                        field: 'UI/UX Design',
                      ),
                      FieldItemDesktop(
                        field: 'UI/UX Design',
                      ),
                      FieldItemDesktop(
                        field: 'UI/UX Design',
                      ),
                      FieldItemDesktop(
                        field: 'UI/UX Design',
                      ),
                      FieldItemDesktop(
                        field: 'UI/UX Design',
                      ),
                    ],
                  ),
                ),
              ),
          ),
          const  NextFieldDesktop()
        ],
      ),

    );
  }
}
