
import 'package:flutter/material.dart';

import 'courseName.dart';
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color(0xFF001F83),
      title: Text('RouteAppOne'),
    ),
      body: Column(
        children: [
          Course("AndroidContent","assets/Android.jpeg","ANDROID COURSE"),
          Course("IOScontent","assets/IOS.jpeg","IOS COURSE"),
          Course("FullStack","assets/fullStack.jpeg","FULLSTACK COURSE"),

        ],
      ),

    );
  }

}