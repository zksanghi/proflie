import 'package:flutter/material.dart';
import 'package:proflie/login.dart';
import 'package:proflie/zubair.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  List namescls = [Zubair()];
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login_Page(),
    );
  }
}

