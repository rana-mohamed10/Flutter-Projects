import 'dart:async';
import 'package:flutter/material.dart';
import 'package:newflutterproject/homeScreen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image.asset('assets/splash_screen.png',fit: BoxFit.fill,height: 630,width: 600,),

          ],
        ),
      ),
    );
  }
}