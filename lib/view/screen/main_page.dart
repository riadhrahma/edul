import 'package:edule/theme/color.dart';
import 'package:edule/view/widget/courses_info.dart';
import 'package:edule/view/widget/custom_app_bar.dart';
import 'package:edule/view/widget/custom_drawer.dart';
import 'package:edule/view/widget/edule_rating.dart';
import 'package:edule/view/widget/search_part.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      backgroundColor: scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30, right: 20, left: 20),
              child: CustomAppBar(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 20, left: 20, top: 45, bottom: 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Start your favourite course',
                    style: Get.textTheme.subtitle2!
                        .copyWith(color: mainColor, fontSize: 14),
                  ),
                  const EduleRating()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, bottom: 38),
              child: RichText(
                text: TextSpan(
                  text: 'Now learning from anywhere, and build your ',
                  style: Get.textTheme.headline6!.copyWith(fontSize: 24),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'bright career.',
                        style: Get.textTheme.headline6!
                            .copyWith(color: mainColor, fontSize: 24)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Text(
                'It has survived not only five centuries but also the leap into electronic typesetting.',
                style: Get.textTheme.caption!
                    .copyWith(color: subtitleColor, fontSize: 18, height: 1.8),
              ),
            ),
            const Align(
              child: CoursesInfo(),
              alignment: Alignment.topLeft,
            ),
           const  SearchPart()
          ],
        ),
      ),
    );
  }
}
