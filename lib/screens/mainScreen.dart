import 'package:flutter/material.dart';
import 'package:flutter_ui_with_drawer/screens/drawer.dart';
import 'package:flutter_ui_with_drawer/screens/home.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [DrawerScreen(), HomeScreen()],
      ),
    );
  }
}
