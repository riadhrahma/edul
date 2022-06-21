import 'package:edule/view/screen/desktop/sign_in.dart';
import 'package:edule/view/screen/mobile/contact_us_page.dart';
import 'package:edule/view/screen/mobile/main_page.dart';
import 'package:edule/view/screen/desktop/contact_us_screen.dart';
import 'package:edule/view/screen/desktop/main_page.dart';
import 'package:edule/view/screen/main_page_wrapper.dart';

class Routes {
  static const  String initPage='/mainPageWrapper';

  static const String mainPage = '/mainPage';
  static const String contactUsPage = '/contactUsPage';
  static const String mainPageDesktop = '/mainPageDesktop';
  static const String contactUsPageDesktop = '/contactUsPageDesktop';
  static const String mainPageWrapper = '/mainPageWrapper';
  static const String  signInDesktop='/SignInDesktop';
  static var routs = {
    // When navigating to the "/" route, build the FirstScreen widget.
    //'/': (context) => const Home(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    mainPage: (context) => const MainPage(),
    contactUsPage: (context) => const ContactUsPage(),
    mainPageDesktop: (context) => const MainPageDesktop(),
    contactUsPageDesktop: (context) => const ContactUsScreenDesktop(),
    mainPageWrapper: (context) => const MainPageWrapper(),
    signInDesktop: (context) => const SignInDesktop(),
  };
}
