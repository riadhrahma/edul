import 'package:edule/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FieldItem extends StatelessWidget {
  final String field;
  const FieldItem({Key? key, required this.field}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: mainColor, width: 0.3),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(
                child: Text(
                  field,
                  style: Get.textTheme.subtitle2!
                      .copyWith(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ));
  }
}
