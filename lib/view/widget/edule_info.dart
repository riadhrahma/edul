import 'package:edule/theme/color.dart';
import 'package:flutter/cupertino.dart';

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
              style: Get.textTheme.subtitle2!.copyWith(color: mainColor,fontWeight: FontWeight.w400,fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,

              crossAxisAlignment:CrossAxisAlignment.end,children: const[
                Padding(
                  padding: EdgeInsets.only(right: 14),
                  child: Icon(CupertinoIcons.mail,color: mainColor,),
                ),
              Text('address@gmail.com',style: TextStyle(fontSize: 15,),)
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,

              crossAxisAlignment:CrossAxisAlignment.end,children: const[
                Padding(
                  padding: EdgeInsets.only(right: 14),
                  child: Icon(CupertinoIcons.phone,color: mainColor,),
                ),
                Text('(970) 262-1413',style: TextStyle(fontSize: 15,),)
              ],),
          ),
          Row(mainAxisSize: MainAxisSize.min ,
          children: [],)

        ],
      ),
    );
  }
}
