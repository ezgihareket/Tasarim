import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tasarim/search_page.dart';
import 'package:flutter_tasarim/socicon_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'chat_screen.dart';
import 'home_widget.dart';
import 'models/comment_model.dart';

class ProfilPage extends StatefulWidget {
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  Column _buildStatColumn(String value, String title) {
    return Column(
      children: <Widget>[
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }

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
                    MaterialPageRoute(
                      builder: (_) => SearchPage(),
                    ),
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
                onPressed: () => print("Profile Page"),
                iconSize: 30.0,
              ),
              title: Text(''),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.arrow_back),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 20,
                ),
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/post2.jpg"),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Kullanici",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Malatya,Türkiye",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[400],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildStatColumn("53", "Gönderi"),
              _buildStatColumn("830", "Followers"),
              _buildStatColumn("557", "Following"),
            ],
          ),
        ],
      ),
    );
  }
}
