import 'package:flutter/material.dart'
    show BuildContext, Widget, showModalBottomSheet;
import 'package:get/get.dart';

extension Floater on Widget {
  void showOnPopUpFunction([title]) {
    Get.defaultDialog(content: this, title: title ?? '');
  }

  void showOnBottomSheetFunction() {
    showModalBottomSheet(
        context: Get.context!,
        builder: (BuildContext bc) {
          return this;
        });
  }

  void get showOnBottomSheet => showOnBottomSheetFunction();
  void get showOnPopUp => showOnPopUpFunction();
}
