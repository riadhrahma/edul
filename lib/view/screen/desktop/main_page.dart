import 'package:edule/asstes.dart';
import 'package:edule/theme/color.dart';

import 'package:edule/view/widget/desktop/become_instructor_desktop.dart';
import 'package:edule/view/widget/desktop/contact_info_bar.dart';
import 'package:edule/view/widget/desktop/course_card_desktop.dart';
import 'package:edule/view/widget/desktop/custom_app_bar.dart';
import 'package:edule/view/widget/desktop/edule_courses_count.dart';
import 'package:edule/view/widget/desktop/edule_info_desktop.dart';
import 'package:edule/view/widget/desktop/fields_selection_desktop.dart';
import 'package:edule/view/widget/desktop/search_part_desktop.dart';
import 'package:edule/view/widget/edule_rating.dart';
import 'package:edule/view/widget/last_part.dart';
import 'package:edule/view/widget/other_course_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPageDesktop extends StatefulWidget {
  const MainPageDesktop({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPageDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ContactInfoBar(),
            const Padding(
              padding: EdgeInsets.only(
                top: 30,
                right: 110,
                left: 110,
              ),
              child: CustomAppBar(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 110,
                top: 45,
                bottom: 20,
              ),
              child: Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Text(
                                  'Start your favourite course',
                                  style: Get.textTheme.subtitle2!.copyWith(
                                    color: mainColor,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 38,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    text:
                                        'Now learning from anywhere, and build your ',
                                    style: Get.textTheme.headline6!.copyWith(
                                      fontSize: 41,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'bright career.',
                                        style:
                                            Get.textTheme.headline6!.copyWith(
                                          color: mainColor,
                                          fontSize: 41,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 30,
                                ),
                                child: Text(
                                  'It has survived not only five centuries but also the leap into electronic typesetting.',
                                  style: Get.textTheme.caption!.copyWith(
                                    color: subtitleColor,
                                    fontSize: 19,
                                    height: 1.8,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                  key: const Key('riadh'),
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 19,
                                        bottom: 19,
                                        right: 16,
                                        left: 16),
                                    child: Text(
                                      'Start A Course',
                                      style: Get.textTheme.subtitle2!
                                          .copyWith(color: Colors.white),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Image.asset(slider),
                      const EduleRating()
                    ],
                  ),
                  Positioned(
                      top: 70,
                      right: MediaQuery.of(context).size.width * 0.4,
                      child: const EduleCoursesCount())
                ],
              ),
            ),
            const SearchPartDesktop(),
            Container(
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.only(
                  left: 18,
                  right: 18,
                ),
                child: FieldsSelectionDesktop(),
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children:  [
                  Wrap(
                    children: const[
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18,
                        ),
                        child: CourseCardDesktop(),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18,
                        ),
                        child: CourseCardDesktop(),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18,
                        ),
                        child: CourseCardDesktop(),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18,
                        ),
                        child: CourseCardDesktop(),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18,
                        ),
                        child: CourseCardDesktop(),
                      ), Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18,
                        ),
                        child: CourseCardDesktop(),
                      ),

                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 70,
                    ),
                    child: OtherCourseButton(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 50,
                    ),
                    child: BecomeInstructorDesktop(),
                  ),
                  // HowItWorks(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: EduleInfoDesktop(),
            ),
            const LastPart()
          ],
        ),
      ),
    );
  }
}
