import 'package:edule/asstes.dart';
import 'package:flutter/material.dart';

import '../../../theme/color.dart';

class AppBarButton extends StatelessWidget {
  final String text;
  final Function action;
  final int index;
  final int selectedIndex;

  const AppBarButton({
    Key? key,
    required this.text,
    required this.action,
    required this.index,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: TextButton(
        onPressed: () => action,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: index == selectedIndex ? lightGreenColor : Colors.black,
                fontSize: 17,
              ),
            ),
            if (index == selectedIndex) Image.asset(shape3),
          ],
        ),
      ),
    );
  }
}
