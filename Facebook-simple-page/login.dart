import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3B5998),
      body: Stack(
        children: [
          Positioned(
            left: 130,
            top: 550,
            child:
              Container(
                child:
                Text('Sign Up for Facebook',style: TextStyle(color:Color(0xFFFFFFFF)),),

              ),
          ),
          Positioned(
            left: 140,
            top: 580,
            child:
            Container(
              child:
              Text('Forget Password ?',style: TextStyle(color:Color(0xFFFFFFFF)),),

            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 100,bottom: 20),
                child: IconButton(
                  icon: const Icon(
                    Icons.facebook,
                    color: Colors.white,
                    size: 60,
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                padding: EdgeInsets.all(1),
                margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                decoration: const BoxDecoration(
                  border:Border(bottom: BorderSide(color: Color(0x9EB6E0FF))),
                  ),
                  child:
                  const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email or Phone',
                      hintStyle: TextStyle(color: Color(0x9EB6E0FF),fontSize: 19),
                    ),
                  ),
                  ),

              Container(
                padding: EdgeInsets.all(1),
                margin: EdgeInsets.only(left: 20,right: 20,top: 5),

                decoration: const BoxDecoration(
                  border:Border(bottom: BorderSide(color: Color(0x9EB6E0FF))),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Color(0x9EB6E0FF),fontSize: 19),
                  ),
                ),
              ),
            ],
          ),
              Container(
                padding: EdgeInsets.only(top: 310,right: 20,left: 20,bottom: 20),
                child: ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(width: 600, height: 50),
               child:
                  ElevatedButton(
                    child: Text('LOG IN'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0x8068A0FF),
                      fixedSize: Size(600, 50),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("HomeScreen");
                      print('Pressed');
                    },
                  ),
                
              ),
              ),

        ],
      ),
    );
  }
}