import 'package:edule/asstes.dart';
import 'package:edule/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: mainColor, width: 0.3),
          borderRadius: const BorderRadius.all(Radius.circular(17)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Image.asset(
                  logo,
                  scale: 1.4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: InkWell(
                    onTap: () => Scaffold.of(context).openDrawer(),
                    child: const ImageIcon(AssetImage(menu),color: Colors.black,)),
              )
            ],
          ),
        ));
  }
}
