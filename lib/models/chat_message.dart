import 'package:flutter/material.dart';
import 'package:flutter_tasarim/chat_detail_page.dart';

class ChatMessage{
  String message;
  MessageType type;

  ChatMessage({@required this.message,@required this.type});
}