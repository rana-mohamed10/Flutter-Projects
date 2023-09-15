import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  IconData NameIcon;
  String myText;

  MyTextField (this.NameIcon,this.myText);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late String Name;
  late String Phone;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 10),
      child:
        Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (newText){
                        Name=newText;

                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: widget.myText,
                        hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),
                        suffixIcon: Icon(widget.NameIcon,color: Colors.blue),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                  ),
                ],
        ),
    );
  }

}

