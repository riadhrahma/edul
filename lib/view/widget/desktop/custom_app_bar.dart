import 'package:edule/asstes.dart';
import 'package:edule/routs.dart';
import 'package:edule/theme/color.dart';
import 'package:edule/view/widget/desktop/app_bar_button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  static const sections = ['Home', 'All Course', 'Pages', 'Blog', 'Contact'];
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final part2 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: sections
          .map(
            (e) => AppBarButton(
              text: e,
              action: () {},
              index: sections.indexOf(e),
              selectedIndex: 0,
            ),
          )
          .toList(),
    );

    final part3 = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.signInDesktop);
            },
            child: const Text(
              'Sign In',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              child: Text('Sign Up',
                  style: Theme.of(context).textTheme.button!.copyWith(
                        fontSize: 17,
                        color: Colors.black,
                      )),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
              border: Border.all(
                color: lightGreenColor,
                width: 1.0,
              ),
            ),
          ),
        ),
      ],
    );
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: mainColor, width: 0.3),
        borderRadius: const BorderRadius.all(
          Radius.circular(17),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        child: Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Image.asset(
                  logo,
                  scale: 1.1,
                ),
              ),
              part2,
              part3
            ],
          ),
        ),
      ),
    );
  }
}
