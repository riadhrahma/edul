import 'package:edule/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FieldItemDesktop extends StatelessWidget {
  final String field;
  const FieldItemDesktop({Key? key, required this.field}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: mainColor, width: 0.3),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: SizedBox(
              width: size.width / 8,

              child: Center(
                child: Text(
                  field,
                  style: Get.textTheme.subtitle2!
                      .copyWith(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          )),
    );
  }
}
