import 'package:assignmet/facebookstory.dart';
import 'package:flutter/material.dart';
import 'facebookstory.dart';
import 'facebookpost.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Home'),
      ),
      body: Column(

        children: [
        SizedBox(height: 20),

        Row(children: [
          Story(),
          Story(),
          Story(),
          Story(),
          Story(),
        ],
      ),
       Column(children: [
         Post(),
         Post(),
       ],)

      ],
      ),

    );
  }


}