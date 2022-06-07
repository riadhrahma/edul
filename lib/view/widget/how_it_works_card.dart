

import 'package:edule/theme/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../asstes.dart';

class HowItWorksCard extends StatelessWidget {
  const HowItWorksCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final findYourCourse = Container(
      width: 300,
      height: 300,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: scaffoldBackgroundColor,
      ),
      child: Stack(
        children: [
          Align(
            child: Image.asset(shape15),
            alignment: const Alignment(-1.1,-1),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 20),
            child: Column(

              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment:Alignment.topLeft,
                  child: Container(
                    width:60,
                    height:60,
                    decoration:  BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(12)),
                        border: Border.all(color: Colors.grey[300]!),
                        color: Colors.white),
                    child: const Center(child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(CupertinoIcons.search,color: mainColor,),
                    ),),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
    return findYourCourse;
  }
}

enum HowItWorksCardType { findYourCourse, bookSeat, getCertificate }
