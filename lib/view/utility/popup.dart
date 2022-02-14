import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showPopUp({
  message,
  bool? closeAndBack,
}) {
  closePopUp();
  Get.defaultDialog(
      title: '',
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Text(message),
          ),
          RawMaterialButton(
              child: Text('ok'.tr),
              onPressed: () {
                if (closeAndBack!) {
                  Get.back();
                  Get.back();
                } else {
                  Get.back();
                }
              })
        ],
      ));
}

void showLoadingPopUp() {
  closePopUp();
  Get.defaultDialog(
      title: '',
      content: Container(
        height: Get.size.height * 0.21,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ));
}

void closePopUp() {
  if (Get.isDialogOpen!) {
    Get.back();
  }
}
