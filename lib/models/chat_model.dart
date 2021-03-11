import 'package:flutter/material.dart';

class Chat {
  String text;
  String secondaryText;
  String image;
  String time;
  bool isMessageRead;

  Chat(
      {@required this.text,
      @required this.secondaryText,
      @required this.image,
      @required this.time,
      @required this.isMessageRead});
}

