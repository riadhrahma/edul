import 'package:edule/view/screen/contact_us_page.dart';
import 'package:edule/view/screen/main_page.dart';
import 'package:edule/view/screen/main_page_desktop/contact_us_page.dart';
import 'package:edule/view/screen/main_page_desktop/main_page.dart';
import 'package:edule/view/screen/main_page_wrapper.dart';

import 'home.dart';

var routs = {
  // When navigating to the "/" route, build the FirstScreen widget.
  //'/': (context) => const Home(),
  // When navigating to the "/second" route, build the SecondScreen widget.
  '/mainPage': (context) => const MainPage(),
  '/contactUsPage':(context)=>const ContactUsPage(),
  '/mainPageDesktop': (context) => const MainPageDesktop(),
  '/contactUsPageDesktop':(context)=>const ContactUsPageDesktop(),
  '/MainPageWrapper':(context)=>const MainPageWrapper(),
};
