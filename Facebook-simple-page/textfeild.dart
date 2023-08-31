import 'package:flutter/material.dart';

class FacebooKTextfeild extends StatelessWidget {
  final String text;
  final String image;

  FacebooKTextfeild(this.text, this.image);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, top: 10),
          child: Image.asset(image, width: 20, height: 25),
        ),
        Container(
          padding: EdgeInsets.only(left: 20, top: 15),
          child: Text(text),
        ),
      ],
    );
  }
}