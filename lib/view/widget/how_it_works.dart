import 'package:flutter/material.dart';

import 'how_it_works_card.dart';
class HowItWorks extends StatelessWidget {
  const HowItWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min,
    children: const [
      HowItWorksCard()
    ],);
  }
}
