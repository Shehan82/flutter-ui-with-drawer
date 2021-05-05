import 'package:flutter/material.dart';
import 'package:flutter_ui_with_drawer/configuration.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffSet = 0;
  double yOffSet = 0;
  double scaleFactor = 1;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        transform: Matrix4.translationValues(xOffSet, yOffSet, 0)
          ..scale(scaleFactor),
        duration: Duration(microseconds: 250),
        color: Colors.white,
        child: Column(
          children: [
            Text("hellooo"),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: isPressed
                        ? GestureDetector(
                            onTap: () {
                              setState(() {
                                xOffSet = 0;
                                yOffSet = 0;
                                scaleFactor = 1;
                                isPressed = false;
                              });
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 27,
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              setState(() {
                                xOffSet = 230;
                                yOffSet = 150;
                                scaleFactor = 0.6;
                                isPressed = true;
                              });
                            },
                            child: Icon(
                              Icons.menu,
                              size: 27,
                            ),
                          ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            "Location",
                            style: GoogleFonts.raleway(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: primaryGreen,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Kurunegala, ",
                                        style: GoogleFonts.raleway(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "SriLanka",
                                        style: GoogleFonts.raleway(
                                            fontSize: 17,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/tt.jpg'))),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
