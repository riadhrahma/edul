import 'package:edule/view/screen/main_page.dart';

import 'home.dart';

var routs = {
  // When navigating to the "/" route, build the FirstScreen widget.
  '/': (context) => const Home(),
  // When navigating to the "/second" route, build the SecondScreen widget.
  '/mainPage': (context) => const MainPage(),
};
