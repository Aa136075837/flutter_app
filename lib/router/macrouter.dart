import 'package:flutter/material.dart';
import 'package:flutter_app/pages/secondPage.dart';

class MacRouter {
  static void pushRefreshDetail(BuildContext context) {
    Navigator.push(context,
        new MaterialPageRoute(builder: (BuildContext context) {
      return new SecondPage();
    }));
  }
}
