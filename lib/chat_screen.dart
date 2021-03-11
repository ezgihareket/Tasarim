import 'package:flutter/material.dart';
import 'package:flutter_tasarim/chat_users_list.dart';
import 'package:flutter_tasarim/profil_page.dart';
import 'package:flutter_tasarim/search_page.dart';
import 'package:flutter_tasarim/socicon_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'home_widget.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatUsersList> chats = [
    ChatUsersList(
      text: 'Samet Akbal',
      secondaryText: 'iyi bende',
      image: 'assets/images/user5.png',
      time: 'Şimdi',
    ),
    ChatUsersList(
      text: 'Ezgi Hareket',
      secondaryText: 'Günaydın',
      image: 'assets/images/user2.png',
      time: '5 dakika',
    ),
    ChatUsersList(
      text: 'Efdal Akın Barsan',
      secondaryText: 'Kolay gelsin',
      image: 'assets/images/user1.png',
      time: 'Dün',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                color: Colors.blue,
                icon: Icon(MdiIcons.homeVariantOutline),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Home()),
                  );
                },
                iconSize: 30.0,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => SearchPage(),),
                  );
                },
                iconSize: 30.0,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(MdiIcons.chatOutline),
                onPressed: () => print("Chat Page"),
                iconSize: 30.0,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Socicon.person_outline),
                iconSize: 30.0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ProfilPage(),),
                  );
                },
              ),
              title: Text(''),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Mesajlar",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                        ),
                      ],
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(right: 8, left: 8, top: 2, bottom: 2),
                      height: 30.0,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add_circle_outline,
                              color: Colors.blue, size: 30.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, right: 10, left: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Ara",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  prefixIcon: Icon(Icons.search,
                      color: Colors.grey.shade400, size: 25.0),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                      color: Colors.grey.shade100,
                    ),
                  ),
                ),
              ),
            ),

            ListView.builder(
              itemCount: chats.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ChatUsersList(
                  image: chats[index].image,
                  text: chats[index].text,
                  secondaryText: chats[index].secondaryText,
                  time: chats[index].time,
                  isMessageRead: (index == 1 || index == 3) ? true : false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
