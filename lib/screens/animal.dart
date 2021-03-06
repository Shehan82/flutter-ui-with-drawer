import 'package:flutter/material.dart';
import 'package:flutter_ui_with_drawer/configuration.dart';
import 'package:flutter_ui_with_drawer/screens/animalDetails.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimalContainer extends StatelessWidget {
  final String name;
  final String type;
  final String age;
  final String distance;
  final String imagePath;
  final Color color;

  AnimalContainer(
      {this.name,
      this.type,
      this.age,
      this.distance,
      this.imagePath,
      this.color});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AnimalDetails()),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 160,
                  height: 200,
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: color,
                  ),
                ),
                Container(
                  width: 160,
                  height: 200,
                  // color: Colors.grey,
                  // padding: EdgeInsets.all(20),
                  child: Image.asset(
                    imagePath,
                  ),
                ),
              ],
            ),
            Container(
              width: 180,
              height: 200,
              margin: EdgeInsets.only(top: 40, bottom: 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Column(
                children: [
                  Container(
                    // color: Colors.grey,
                    margin: EdgeInsets.only(left: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: GoogleFonts.raleway(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey[700]),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          // color: Colors.green,
                          child: Image.asset(
                            'assets/images/male.png',
                            color: Colors.grey[500],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 6),
                    alignment: Alignment.centerLeft,
                    child: Text(type,
                        style: GoogleFonts.raleway(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey[500])),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 13, left: 6),
                    alignment: Alignment.centerLeft,
                    child: Text(age + " years old",
                        style: GoogleFonts.raleway(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey[400])),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 13,
                    ),
                    // color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on_rounded, color: primaryGreen),
                        Container(
                            margin: EdgeInsets.only(left: 8),
                            child: Text("Distance: " + distance,
                                style: GoogleFonts.raleway(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.grey[400])))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
