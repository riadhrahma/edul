import 'package:edule/asstes.dart';
import 'package:edule/theme/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EduleTutorialButton extends StatelessWidget {
  final Function action;

  const EduleTutorialButton({Key? key, required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: scaffoldBackgroundColor,
      splashColor: scaffoldBackgroundColor,
      focusColor: scaffoldBackgroundColor,
      highlightColor: scaffoldBackgroundColor,

      onTap: () => action,
      child: Stack(
        children: [
          Image.asset(
            shape10,
            scale: 1.55,
          ),
          Positioned(
            top: 23,
            left: 27,
            child: Icon(
              CupertinoIcons.play,
              color: Colors.yellow[800],
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
