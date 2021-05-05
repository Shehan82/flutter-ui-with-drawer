import 'package:flutter/material.dart';
import 'package:flutter_ui_with_drawer/configuration.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xff1c5a54).withOpacity(1),
            Color(0xff1c5a54).withOpacity(1)
          ])),
    );
  }
}
