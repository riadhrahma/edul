import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../asstes.dart';
import '../../../theme/color.dart';

class ContactInfoBar extends StatelessWidget {
  const ContactInfoBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final firstPart = RichText(
        text: const TextSpan(
            text: 'All course 28% off for ',
            style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.w100,),
            children: [
          TextSpan(
            text: "Liberian people's",
            style: TextStyle(color: lightGreenColor, fontSize: 16,fontWeight: FontWeight.w100,),
          ),
        ]));

    final arrow1 = Image.asset(arrowLeft);
    final phoneNumber = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: Icon(
            Icons.phone,
            color: lightGreenColor,
          ),
        ),
        Text(
          '(970)262-1413',
          style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.w100,
            fontSize: 16,
          ),
        ),
      ],
    );

    final email = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: Icon(
            Icons.email_outlined,
            color: lightGreenColor,
          ),
        ),
        Text(
          'adress@gmail.com',
          style: TextStyle(fontWeight: FontWeight.w100,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    );
    final arrow2 = Image.asset(arrowRight);

    final socialMedia = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: () {},
          child: SvgPicture.asset(
            facebook,
            color: Colors.white,
            height: 25,
            width: 25,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: SvgPicture.asset(
            twitter,
            height: 25,
            width: 25,
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: SvgPicture.asset(
            skype,
            height: 25,
            width: 25,
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: SvgPicture.asset(
            instagram,
            height: 25,
            width: 25,
            color: Colors.white,
          ),
        ),
      ],
    );

    return Container(
      width: size.width,
      color: accentColor,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              firstPart,
              arrow1,
              phoneNumber,
              email,
              arrow2,
              socialMedia,
            ],
          ),
        ),
      ),
    );
  }
}
