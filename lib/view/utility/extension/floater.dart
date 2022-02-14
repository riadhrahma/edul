import 'package:flutter/material.dart';
import 'package:get/get.dart';


extension Floater on Widget {
  showOnPopUpFunction([title]) {

    Get.defaultDialog(content: this,title: title==null?'':title);
  }

  void showOnBottomSheetFunction() {

    showModalBottomSheet(
        context: Get.context!,
        builder: (BuildContext bc) {
          return this;
        });
  }

  get showOnBottomSheet => showOnBottomSheetFunction();
  get showOnPopUp => showOnPopUpFunction();
}
