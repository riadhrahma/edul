import 'package:edule/asstes.dart';
import 'package:edule/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BecomeInstructorDesktop extends StatelessWidget {
  const BecomeInstructorDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120),
      child: Container(
        decoration: const BoxDecoration(
          color: scaffoldBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(17)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 100),
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
                          fontWeight: FontWeight.w500,
                          color: mainColor,
                          fontSize: 20),
                    )),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'You can join with \nEdule as ',
                              style: Get.textTheme.headline6!
                                  .copyWith(fontSize: 35),
                              children: [
                                TextSpan(
                                  text: 'a instructor?',
                                  style: Get.textTheme.headline6!
                                      .copyWith(fontSize: 35, color: mainColor),
                                )
                              ]),
                        ),
                        Image.asset(shape4),
                      ],
                    ),
                  ),
                  Image.asset(shape13),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18),
                    child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed('contactUsPage');
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 19, bottom: 19, right: 28, left: 28),
                          child: Text(
                            'Drop Information',
                            style: Get.textTheme.subtitle2!
                                .copyWith(color: Colors.white),
                          ),
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
