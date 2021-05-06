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
          Positioned(
            child: Container(
              // height: (MediaQuery.of(context).size.height / 2) + 50,
              color: Colors.white,
            ),
          ),
          Positioned(
            child: Container(
              height: (MediaQuery.of(context).size.height / 2) + 50,
              color: Color(0xffc4d4d4),
            ),
          ),
          Positioned(
              width: 200,
              left: (MediaQuery.of(context).size.width / 2) - 100,
              top: 80,
              child: Container(
                child: Container(
                  // color: Colors.grey,
                  child: Image.asset(
                    'assets/images/pet-cat1.png',
                  ),
                ),
              )),
          Positioned(
              width: MediaQuery.of(context).size.width,
              top: 60,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                // color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.grey[800],
                    ),
                    Icon(
                      Icons.cloud_upload_outlined,
                      size: 30,
                      color: Colors.grey[800],
                    )
                  ],
                ),
              )),
          Positioned(
              top: (MediaQuery.of(context).size.height / 2) - 25,
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width - 40,
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.black,
                ),
              ))
        ],
      ),
    );
  }
}
