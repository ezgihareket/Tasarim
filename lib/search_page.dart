import 'package:flutter/material.dart';
import 'package:flutter_tasarim/profil_page.dart';
import 'package:flutter_tasarim/socicon_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'chat_screen.dart';
import 'home_widget.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ChatScreen()),
                  );
                },
                iconSize: 30.0,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Socicon.person_outline),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ProfilPage(),),
                  );
                },
                iconSize: 30.0,
              ),
              title: Text(''),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 60, right: 10, left: 10),
          child: Container(
            height: (MediaQuery.of(context).size.height),
            width: (MediaQuery.of(context).size.width),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey.shade500),
                prefixIcon:
                    Icon(Icons.search, color: Colors.grey.shade500, size: 25.0),
                filled: true,
                fillColor: Colors.grey.shade200,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                    color: Colors.grey.shade100,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
