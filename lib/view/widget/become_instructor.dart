import 'package:edule/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BecomeInstructor extends StatelessWidget {
  const BecomeInstructor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        decoration: const BoxDecoration(
          color: scaffoldBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(17)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Become A Instructor',
                      style: Get.textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.w500, color: mainColor,fontSize: 16),
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: RichText(
                  text: TextSpan(
                      text: 'You can join with Edule as ',
                      style: Get.textTheme.headline6!.copyWith(fontSize: 24),
                      children: [
                        TextSpan(
                          text: 'a instructor?',
                          style: Get.textTheme.headline6!
                              .copyWith(fontSize: 24, color: mainColor),
                        )
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: ElevatedButton(
                    onPressed: () {

                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 19, bottom: 19, right: 16, left: 16),
                      child: Text(
                        'Drop Information',
                        style: Get.textTheme.subtitle2!
                            .copyWith(color: Colors.white),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
