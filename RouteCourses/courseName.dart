import 'dart:ui';

import 'package:flutter/material.dart';

class Course extends StatelessWidget{
  String CourseName;
  String image;
  String buttonName;
  Course(this.CourseName,this.image,this.buttonName);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 9),
        Image.asset(image,width: 350,height: 150,),
        SizedBox(height: 5),

        ElevatedButton(
            child: Text(buttonName,style: TextStyle(fontWeight: FontWeight.bold),),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF104AD0),
              fixedSize: Size(400, 40),
              shape:RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(15.0)
            ),
          ),
            onPressed: () {
              Navigator.of(context).pushNamed(CourseName);
              print('Pressed');
            },
          ),
        ],
    );
  }

}