import 'package:edule/asstes.dart';
import 'package:edule/model/repos/crud_repos.dart';
import 'package:edule/theme/color.dart';
import 'package:edule/theme/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CourseCardDesktop extends StatelessWidget {
  const CourseCardDesktop({Key? key}) : super(key: key);
   Size size(BuildContext context) => MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {

    final time = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: const [
        Icon(
          Icons.timer,
          color: mainColor,
          size: 22,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text('08 hr 15 mins'),
        )
      ],
    );

    final lectures = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: const [
        Icon(CupertinoIcons.book, color: mainColor, size: 22),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text('29 Lectures'),
        )
      ],
    );

    final rating = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '4.9',
          style: Get.textTheme.headline6!.copyWith(fontSize: 15),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemSize: 20,
              itemCount: 5,
              itemPadding: EdgeInsets.zero,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                size: 10,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                rating.log();
              },
            ))
      ],
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Container(
        constraints:  const  BoxConstraints(maxWidth: 370,
          maxHeight: 700,),
        decoration: BoxDecoration(
          border: Border.all(color: mainColor, width: 0.3),
          borderRadius: const BorderRadius.all(Radius.circular(17)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(17.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset(
                            blog6,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 13),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          author1,
                          height: 42,
                          width: 42,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 7),
                        child: Text(
                          'Jason Williams',
                          style:
                              TextStyle(fontSize: 13, color: subtitleColor),
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      ElevatedButton(
                        style: elevatedButtonStyle2,
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            'Science',
                            style: TextStyle(
                                color: mainColor,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 17),
                  child: Text(
                    'Data Science and Machine Learning with python - Hands On!',
                    style: Get.textTheme.headline6!.copyWith(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [time, lectures],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: scaffoldBackgroundColor,
                      border: Border.all(
                          color: scaffoldBackgroundColor, width: 0.3),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(17)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            String.fromCharCode(36) + "420.00",
                            style: Get.textTheme.headline5!.copyWith(
                                fontSize: 17,
                                color: mainColor,
                                fontWeight: FontWeight.w700),
                          ),
                          rating
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
