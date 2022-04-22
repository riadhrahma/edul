import 'package:edule/asstes.dart';
import 'package:edule/model/services/internet.dart';
import 'package:edule/view/utility/extension/floater.dart';
import 'package:edule/view/utility/info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _showLoading = false;

  final Internet _internet = Internet();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TweenAnimationBuilder<double>(
              duration: const Duration(milliseconds: 2000),
              curve: Curves.fastOutSlowIn,
              builder: (BuildContext context, double value, Widget? child) {
                return Opacity(
                    opacity: value,
                    child: Transform.scale(
                      child: Image.asset(logo),
                      scale: 1,
                    ));
              },
              tween: Tween<double>(begin: 0.0, end: 1),
              onEnd: () {
                setState(() {
                  _showLoading = true;
                });
                _internet
                    .check()
                    .then((value) =>
                        Navigator.pushReplacementNamed(context, '/mainPageDesktop'))
                    .whenComplete(() {
                  setState(() {
                    _showLoading = false;
                  });
                }).onError((error, stackTrace) => Info(
                            title: 'error'.tr,
                            subTitle: error.toString(),
                            infoType: InfoType.error)
                        .showOnBottomSheetFunction());
              },
            ),
            if (_showLoading) const CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
