import 'package:flutter/material.dart';

class ChatDetailPageAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  iconSize: 30.0,
                  color: Colors.black,
                  onPressed: () => Navigator.pop(context),
                ),
                SizedBox(width: 2.0),
                CircleAvatar(
                  child: ClipOval(
                    child: Image(
                      height: 50.0,
                      width: 50.0,
                      image: AssetImage("assets/images/user5.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  maxRadius: 20.0,
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Samet Akbal",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Çevrimiçi",
                        style: TextStyle(color: Colors.green, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.more_vert, color: Colors.black),
              ],
            ),
          ),
        ),
      );

  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
