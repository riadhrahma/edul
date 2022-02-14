import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DrawerHeader(
              child: Align(
                alignment: Alignment.topRight,
            child: IconButton(
              icon: const Icon(CupertinoIcons.clear),
              onPressed: () =>Navigator.pop(context),
            ),
          ))
        ],
      ),
    );
  }
}
