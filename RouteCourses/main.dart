import 'package:flutter/material.dart';
import 'package:newflutterproject/andoidContent.dart';
import 'package:newflutterproject/iosContent.dart';
import 'package:newflutterproject/fullstackContent.dart';

import 'splashScreen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Courses',
    home: SplashScreen(),
    routes: {
      "AndroidContent": (BuildContext) {
        return AndroidContent();
      },
      "IOScontent": (BuildContext) {
        return IOScontent();
      },
      "FullStack": (BuildContext) {
        return FullStack();
      },
    },
  ));
}