import 'dart:ui';

import 'package:flutter/material.dart';

class FullStack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF001F83),
        title: Text('RouteAppOne'),
      ),
      body:Stack(children:[
        Image.asset('assets/Bg.jpg',fit: BoxFit.fill,height: 1000,),
        ListView(children: [
          Container(
            padding: EdgeInsets.all(20),
            child:
            Image.asset('assets/fullStack.jpeg',width: 50),
          ),
          Text("""
      •HTML	
      •HTML 5 
      •CSS
      •CSS3
      •SASS
      •Bootstrap 4
      •JavaScript
      •Regular expressions
      •ECMAScript 6
      •JQuery
      •angular 7
      •fabric.js
      •AJAX
      •JSON
      •Hosting and domains
      •Freelancing tips and tricks
      •PHP
      •MYSQL
      •MYSQL advanced queries and triggers
      •OOP 
      •Design Patterns
      •MVC
      •laravel 
      •build Api , Api authentication
      •connect wordpress with laravel
      •build wordpress web service 
      •agile
      •Scrum
      •Software development process""",
            style: TextStyle(color: Colors.white,
                fontWeight: FontWeight. bold,
                fontSize: 17),),


        ],
        ),
      ],
      ),
    );
  }

}