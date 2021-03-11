import 'package:flutter/material.dart';

import 'chat_detail_page.dart';

class ChatUsersList extends StatefulWidget {
  String text;
  String secondaryText;
  String image;
  String time;
  bool isMessageRead;

  ChatUsersList(
      {@required this.text,
      @required this.secondaryText,
      @required this.image,
      @required this.time,
      @required this.isMessageRead});

  @override
  _ChatUsersListState createState() => _ChatUsersListState();
}

class _ChatUsersListState extends State<ChatUsersList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ChatDetailPage();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    child: ClipOval(
                      child: Image(
                        height: 50.0,
                        width: 50.0,
                        image: AssetImage(widget.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.text,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              Text(
                                widget.secondaryText,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey.shade700),
                              ),
                              SizedBox(width: 5),
                              Icon(Icons.circle, size: 5, color: Colors.grey),
                              SizedBox(width: 5),
                              Text(
                                widget.time,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: widget.isMessageRead
                                        ? Colors.blue
                                        : Colors.grey.shade500),
                              ),
                            ],
                          ),
                          Divider(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
