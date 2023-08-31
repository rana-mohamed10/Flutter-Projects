import 'login.dart';
import 'textfeild.dart';
import 'homescreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'CHAT',
    home: LoginScreen(),
    routes: {
      "HomeScreen" :(BuildContext) {
          return HomeScreen();
  }

    },
  )
  );
}
