import 'package:edule/theme/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EduleRating extends StatelessWidget {
  const EduleRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '4.8',
                    style: Get.textTheme.subtitle1!.copyWith(
                        color: mainColor, fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.yellow[800],
                      size: 13,
                    ),
                  )
                ],
              ),
              Text(
                'Rating (86k)',
                style: Get.textTheme.caption!
                    .copyWith(color: subtitleColor, fontSize: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}
