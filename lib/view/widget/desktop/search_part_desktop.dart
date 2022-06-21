import 'package:edule/asstes.dart';
import 'package:edule/theme/color.dart';
import 'package:edule/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPartDesktop extends StatelessWidget {
  const SearchPartDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 55, right: 20, left: 20, bottom: 50),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'All ',
                        style: Get.textTheme.headline6!.copyWith(fontSize: 35),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Courses ',
                              style: Get.textTheme.headline6!
                                  .copyWith(color: mainColor, fontSize: 35)),
                          TextSpan(
                              text: 'of Edule',
                              style: Get.textTheme.headline6!
                                  .copyWith(fontSize: 35)),
                        ],
                      ),
                    ),
                    RotatedBox(quarterTurns: 2,
                    child: Image.asset(shape6))
                  ],
                ),
              ),
              SizedBox(
                width: 500,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Search your course',
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: ElevatedButton(
                            style: elevatedButtonStyle2,
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Icon(
                                Icons.search,
                                color: mainColor,
                              ),
                            )),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
