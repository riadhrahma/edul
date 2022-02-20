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
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                Text('*', style: TextStyle(color: Colors.white, fontSize: 14)),
                Text('Terms of Services'),
                Text('*'),
                Text('Privacy Policy'),
                Text('*'),
                Text('Sitemap'),
                Text('*'),
                Text('Security'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
