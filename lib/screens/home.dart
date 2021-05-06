import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ui_with_drawer/configuration.dart';
import 'package:flutter_ui_with_drawer/screens/animal.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  String animal = "Cats";

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        transform: Matrix4.translationValues(xOffSet, yOffSet, 0)
          ..scale(scaleFactor),
        duration: Duration(microseconds: 250),
        color: Colors.grey[100],
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            SizedBox(
              height: 20,
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
            SizedBox(
              height: 60,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    width: 340,
                    height: 45,
                    child: TextField(
                      style: GoogleFonts.raleway(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: primaryGreen),
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          suffixIcon: Icon(
                            Icons.settings,
                            color: Colors.grey,
                          ),
                          contentPadding: EdgeInsets.only(top: 12),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: 'Search pet to adopt',
                          hintStyle: GoogleFonts.raleway(
                              fontSize: 15, fontWeight: FontWeight.w500)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 120,
                    margin: EdgeInsets.only(left: 20),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 100,
                            height: 100,
                            margin: EdgeInsets.only(
                              right: 0,
                            ),
                            // color: Colors.grey[700],
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    print(categories[index]["name"]);
                                    setState(() {
                                      animal = categories[index]["name"];
                                    });
                                  },
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    padding: EdgeInsets.all(14),
                                    margin:
                                        EdgeInsets.only(bottom: 12, top: 12),
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 7,
                                            spreadRadius: 2,
                                            color: animal ==
                                                    categories[index]["name"]
                                                ? primaryGreen.withOpacity(0.5)
                                                : Colors.grey.withOpacity(0.5),
                                            offset: Offset(0, 4),
                                          )
                                        ],
                                        color:
                                            animal == categories[index]["name"]
                                                ? primaryGreen
                                                : Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Image.asset(
                                      categories[index]["iconPath"],
                                      color: animal == categories[index]["name"]
                                          ? Colors.white
                                          : Colors.grey,
                                      width: 20,
                                      height: 20,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Text(
                                  categories[index]["name"],
                                  style: GoogleFonts.raleway(
                                      fontSize: 16,
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  AnimalContainer(
                    name: "Orion",
                    age: "2",
                    distance: "7.5Km",
                    imagePath: 'assets/images/pet-cat1.png',
                    type: "Abbysinnion cat",
                    color: Color(0xffc4d4d4),
                  ),
                  AnimalContainer(
                      name: "Sola",
                      age: "1",
                      distance: "3.6Km",
                      imagePath: 'assets/images/pet-cat2.png',
                      type: "Americans cat",
                      color: Color(0xffeccc9c)),
                ],
              ),
            )
          ],
        ));
  }
}
