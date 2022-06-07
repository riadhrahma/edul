import 'package:edule/theme/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../asstes.dart';
import 'package:get/get.dart';

class EduleInfo extends StatelessWidget {
  const EduleInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 60,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                logo,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              'Caribbean Ct',
              style: Get.textTheme.headline6!.copyWith(fontSize: 22),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text(
              'Haymarket, Virginia (VA).',
              style: Get.textTheme.subtitle2!.copyWith(
                  color: mainColor, fontWeight: FontWeight.w400, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 14),
                  child: Icon(
                    CupertinoIcons.mail,
                    color: mainColor,
                  ),
                ),
                Text(
                  'address@gmail.com',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 14),
                  child: Icon(
                    CupertinoIcons.phone,
                    color: mainColor,
                  ),
                ),
                Text(
                  '(970) 262-1413',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: SvgPicture.asset(
                    facebook,
                    height: 25,
                    width: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: SvgPicture.asset(twitter, height: 25, width: 25),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: SvgPicture.asset(skype, height: 25, width: 25),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: SvgPicture.asset(instagram, height: 25, width: 25),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text(
              'Category',
              style: Get.textTheme.headline6!.copyWith(fontSize: 22),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 18),
            child: Text(
              'Creative Writing',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 18),
            child: Text(
              'Film & Video',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 18),
            child: Text(
              'Graphic Design',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 18),
            child: Text(
              'UI/UX Design',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 18),
            child: Text(
              'Business Analytics',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: Text(
              'Marketing',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text(
              'Quick Links',
              style: Get.textTheme.headline6!.copyWith(fontSize: 22),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 18),
            child: Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 18),
            child: Text(
              'Discussion',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 18),
            child: Text(
              'Terms & Conditions',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 18),
            child: Text(
              'Customer Support',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: Text(
              'Course FAQ’s',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text(
              'Subscribe',
              style: Get.textTheme.headline6!.copyWith(fontSize: 22),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 18),
            child: Text(
              'Lorem Ipsum has been them an industry printer took a galley make book.',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Email here',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.black)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: ElevatedButton(
              onPressed: () {},

              child: const  Padding(
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                child:  Text(
                  'Subscribe Now',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
