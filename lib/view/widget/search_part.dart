import 'package:edule/theme/color.dart';
import 'package:edule/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPart extends StatelessWidget {
  const SearchPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 55, right: 20, left: 20, bottom: 50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: RichText(
                  text: TextSpan(
                    text: 'All ',
                    style: Get.textTheme.headline6!.copyWith(fontSize: 24),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Courses ',
                          style: Get.textTheme.headline6!
                              .copyWith(color: mainColor, fontSize: 24)),
                      TextSpan(
                          text: 'of Edule',
                          style:
                              Get.textTheme.headline6!.copyWith(fontSize: 24)),
                    ],
                  ),
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Search your course',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: ElevatedButton(
                      style: elevatedButtonStyle2,
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Icon(Icons.search,color: mainColor,),
                        )),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
