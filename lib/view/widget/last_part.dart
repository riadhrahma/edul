import 'package:edule/theme/color.dart';
import 'package:flutter/material.dart';

class LastPart extends StatelessWidget {
  const LastPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: accentColor,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Wrap(
              children: const [
                Text(
                  'Terms of Services',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text('*',
                      style: TextStyle(color: Colors.grey, fontSize: 13)),
                ),
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text('*',
                      style: TextStyle(color: Colors.grey, fontSize: 8)),
                ),
                Text(
                  'Sitemap',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text('*',
                      style: TextStyle(color: Colors.grey, fontSize: 8)),
                ),
                Text(
                  'Security',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: RichText(
                text: const TextSpan(text: '© 2021 ',style: TextStyle(color: Colors.white,fontSize: 14), children: <TextSpan>[
                  TextSpan(text: 'EDULE ',style: TextStyle(color: mainColor)),
                  TextSpan(text: 'Remake with ❤️ by '),
                  TextSpan(text: 'Riadh Gharbi')
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
