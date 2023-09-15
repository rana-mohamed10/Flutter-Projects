import 'package:assignmet3/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    title: 'Contact screen',
    home: HomeSc(),
    routes: {
      "home" :(context) => HomeSc()
    },

  ));
}

