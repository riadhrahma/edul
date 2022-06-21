import 'package:edule/theme/color.dart';
import 'package:edule/view/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: scaffoldBackgroundColor,
      body: SingleChildScrollView(child: Column(mainAxisSize: MainAxisSize.min,
    children:const  [
       Padding(
        padding: EdgeInsets.only(top: 30, right: 18, left: 18),
        child: CustomAppBar(),
      ),
    ],),),);
  }
}
