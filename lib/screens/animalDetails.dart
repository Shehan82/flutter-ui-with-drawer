import 'package:flutter/material.dart';

class AnimalDetails extends StatefulWidget {
  @override
  _AnimalDetailsState createState() => _AnimalDetailsState();
}

class _AnimalDetailsState extends State<AnimalDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: (MediaQuery.of(context).size.height / 2) + 50,
            color: Color(0xffc4d4d4),
          ),
          Positioned(
              width: 200,
              left: (MediaQuery.of(context).size.width / 2) - 100,
              top: 60,
              child: Container(
                child: Container(
                  color: Colors.grey,
                  child: Image.asset(
                    'assets/images/pet-cat1.png',
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
