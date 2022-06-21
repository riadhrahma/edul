import 'package:edule/asstes.dart';
import 'package:edule/theme/color.dart';

import 'package:edule/view/widget/desktop/contact_info_bar.dart';
import 'package:edule/view/widget/desktop/custom_app_bar.dart';
import 'package:edule/view/widget/desktop/edule_info_desktop.dart';
import 'package:edule/view/widget/last_part.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInDesktop extends StatefulWidget {
  const SignInDesktop({Key? key}) : super(key: key);

  @override
  State<SignInDesktop> createState() => _SignInState();
}

class _SignInState extends State<SignInDesktop> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ContactInfoBar(),
            const Padding(
              padding: EdgeInsets.only(
                top: 30,
                right: 110,
                left: 110,
              ),
              child: CustomAppBar(),
            ),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  border: Border.all(
                    color: lightGreenColor,
                    width: 1.0,
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 100),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: hintGreenColor,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          child: Stack(
                            children: [
                              Image.asset(registerLogin),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        Flexible(
                          child: SizedBox(
                            width: size.width / 3.7,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 110, bottom: 70),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          text: 'Login ',
                                          style:
                                              Get.textTheme.headline6!.copyWith(
                                            fontSize: 30,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'Now',
                                              style: Get.textTheme.headline6!
                                                  .copyWith(
                                                color: mainColor,
                                                fontSize: 30,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Image.asset(
                                        shape4,
                                        scale: 1.9,
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: TextFormField(
                                    controller: _emailController,
                                    decoration: const InputDecoration(
                                      hintText: 'Username or Email',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20),
                                  child: TextFormField(
                                    controller: _passwordController,
                                    decoration: const InputDecoration(
                                      hintText: 'Password',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'Login',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            )
                                          ],
                                        ),
                                      )),
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: hintGreenColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            'Login with Google',
                                            style: TextStyle(
                                                color: mainColor, fontSize: 18),
                                          )
                                        ],
                                      ),
                                    )),
                              ],
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: EduleInfoDesktop(),
            ),
            const LastPart()
          ],
        ),
      ),
    );
  }
}
