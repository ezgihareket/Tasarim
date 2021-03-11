import 'package:flutter/material.dart';
import 'package:flutter_tasarim/home_widget.dart';
import 'package:flutter_tasarim/profil_page.dart';
import 'package:flutter_tasarim/search_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}
