import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(microseconds: 20),
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/dog.png"),
          ],
        ));
  }
}
