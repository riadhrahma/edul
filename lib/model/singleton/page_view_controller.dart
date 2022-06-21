
import 'package:flutter/material.dart';

class PageViewController {
  PageController pageController = PageController();

  void next() {
    if (pageController.hasClients) {
      pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.fastOutSlowIn);
    }
  }

  void previews() {
    if (pageController.hasClients) {
      pageController.previousPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.fastOutSlowIn);
    }
  }

  PageViewController._internal();

  static final _singleton = PageViewController._internal();

  factory PageViewController() => _singleton;
}

final pageViewController = PageViewController();







