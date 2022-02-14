import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Internet {
  Future<bool> check() async {
    try {
      var result = await http.get(Uri.parse('http://google.com'));
      if (result.statusCode == 200) {
        return true;
      } else {
        //throw 'no internet connection available';
        return true;
      }
    } catch (e) {
      debugPrint(e.toString());
      //throw 'no internet connection available';
    }

    return false;
  }
}
