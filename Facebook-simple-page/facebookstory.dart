import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Story extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child:
          Image.asset('assets/facebookStory.jpg',width: 80,height: 110,),
        ),

        Icon(Icons.account_circle_rounded,color: Colors.blue,),
        Positioned(
          top: 90,
          left: 10,
          child:
          Text('Owner',style: TextStyle(color: Colors.white,fontWeight: FontWeight. bold),), ),

      ],
    );
  }

}