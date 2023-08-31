import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'textfeild.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            children: [
              Icon(
                Icons.account_circle,
                color: Colors.black,
                size: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Owner', style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Text('3h'),
                      SizedBox(width: 8),
                      Icon(
                        Icons.public_rounded,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        // SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(right: 260),
          child: Row(
            children: [
              SizedBox(width: 10),
              Text('My Post', style: TextStyle(fontSize: 30)),
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text('100',
                  style: TextStyle(fontSize: 10), textAlign: TextAlign.left),
              SizedBox(
                width: 5,
              ),
              Image.asset('assets/like.jpg', width: 30, height: 50),
              SizedBox(
                width: 220,
              ),
              Text('100 comments'),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 400.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      FacebooKTextfeild('Like','assets/singleLike.jpg'),
                      SizedBox(
                        width: 30,
                      ),
                      FacebooKTextfeild('Comment', 'assets/comment.png'),
                      SizedBox(
                        width: 30,
                      ),
                      FacebooKTextfeild('Share', 'assets/share.png'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
