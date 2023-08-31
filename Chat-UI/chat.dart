import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ChatMessage {
  String messageContent;
  String messageType;

  ChatMessage(this.messageContent,this.messageType);
}
List<ChatMessage> messages = [
ChatMessage( "This is my first message",  "sender"),
ChatMessage( "This is my second message",  "receiver"),];


