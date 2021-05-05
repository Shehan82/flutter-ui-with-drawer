import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffSet = 0;
  double yOffSet = 0;
  double scaleFactor = 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(microseconds: 250),
        color: Colors.white,
        child: Column(
          children: [
            Text("hellooo"),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Row(
                children: [
                  Icon(Icons.menu),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Text("Location"),
                        ),
                        Container(
                            child: Row(
                          children: [
                            Icon(Icons.location_on),
                            Text(
                              "Maraluwawa, Kurunegala",
                              style: GoogleFonts.roboto(fontSize: 20),
                            )
                          ],
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
