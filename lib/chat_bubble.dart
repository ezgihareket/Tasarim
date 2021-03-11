import 'package:flutter/material.dart';
import 'package:flutter_tasarim/chat_detail_page.dart';
import 'package:flutter_tasarim/models/chat_message.dart';

class ChatBubble extends StatefulWidget {
  ChatMessage chatMessage;
  ChatBubble({@required this.chatMessage});

  @override
  _ChatBubbleState createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 10, top: 10),
      child: Align(
        alignment: (widget.chatMessage.type == MessageType.Receiver
            ? Alignment.topLeft
            : Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: (widget.chatMessage.type == MessageType.Receiver
                ? Color.fromARGB(255, 80, 181, 255)
                : Colors.white),
          ),
          padding: EdgeInsets.all(15),
          child: Text(
            widget.chatMessage.message,
            style: TextStyle(
                color: widget.chatMessage.type == MessageType.Receiver
                    ? Colors.white
                    : Colors.black),
          ),
        ),
      ),
    );
  }
}
