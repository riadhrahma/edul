import 'package:edule/asstes.dart';
import 'package:edule/theme/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EduleCoursesCount extends StatelessWidget {
  const EduleCoursesCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Container(
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: mainColor),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Icon(CupertinoIcons.book,color: Colors.white,size: 16,),
                  ),

                  Text(
                    '1,235',
                    style: Get.textTheme.subtitle1!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w500,fontSize: 16),
                  ),
                  Text(
                    'courses',
                    style: Get.textTheme.caption!
                        .copyWith(color: Colors.white, fontSize: 12),
                  )
                ],
              ),
            ),
          ),
        ),
        Image.asset(shape6,scale: 1.65,)
      ],
    );
  }
}
