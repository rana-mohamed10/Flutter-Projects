import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chat.dart';

class HomeScreen extends StatelessWidget {
  Alignment _getAlignmentForMessageType(String messageType) {
    return messageType == "sender" ? Alignment.topLeft : Alignment.topRight;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 10, top: 10),
            child: Row(
              children: const [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                SizedBox(width: 20),
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/person.jpg',
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  'Person',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 70),
                Icon(
                  Icons.videocam,
                  color: Colors.white,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.call,
                  color: Colors.white,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.fill,
          ),
          ListView.builder(
            itemCount: messages.length,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (messages[index].messageType == "sender")
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/person1.jpg'),
                      ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Align(
                        alignment: _getAlignmentForMessageType(messages[index].messageType),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(25.0)),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Text(
                            messages[index].messageContent,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),

                    if (messages[index].messageType == "receiver")
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/person2.jpg'),
                      ),
                  ],
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10, bottom: 30, right: 10),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                        // other properties like fontSize, fontWeight, etc.
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.sentiment_satisfied_alt,
                            color: Colors.white),
                        hintText: 'Type a Message',
                        hintStyle: TextStyle(color: Colors.white),
                        suffixIcon:
                        Icon(Icons.attach_file, color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  SizedBox.fromSize(
                    size: Size(50, 50),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Material(
                          color: Colors.black,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.mic,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
