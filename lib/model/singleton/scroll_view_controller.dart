import 'package:flutter/material.dart';

class ScrollViewController {
  ScrollController scrollController = ScrollController();

  ScrollViewController._internal();

  static final _singleton = ScrollViewController._internal();

  factory ScrollViewController() => _singleton;

  void next() {
    if (scrollController.hasClients) {
      final currentOffset = scrollController.offset;
      print(currentOffset);

      scrollController.animateTo(scrollController.offset + 400,
          duration: const Duration(milliseconds: 250),
          curve: Curves.fastOutSlowIn);
    }
  }

  void previews() {
    if (scrollController.hasClients) {
      final currentOffset = scrollController.offset;
      if (currentOffset != 0) {
        scrollController.animateTo(currentOffset - 400,
            duration: const Duration(milliseconds: 250),
            curve: Curves.fastOutSlowIn);
      }
    }
  }
}

final scrollViewController = ScrollViewController();
