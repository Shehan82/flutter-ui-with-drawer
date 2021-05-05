import 'package:flutter/material.dart';
import 'package:flutter_ui_with_drawer/screens/drawer.dart';
import 'package:flutter_ui_with_drawer/screens/mainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
