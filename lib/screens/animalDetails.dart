import 'package:flutter/material.dart';
import 'package:flutter_ui_with_drawer/configuration.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

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
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.grey[800],
                      ),
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
              top: (MediaQuery.of(context).size.height / 2) - 10,
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width - 40,
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        right: 20,
                        left: 20,
                        top: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sola",
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
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Abbysinnion cat",
                            style: GoogleFonts.raleway(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey[400]),
                          ),
                          Text(
                            "2 years old",
                            style: GoogleFonts.raleway(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey[400]),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: primaryGreen,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              "No: 41/1, Maraluwawa, Kurunegala",
                              style: GoogleFonts.raleway(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey[400]),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
              top: (MediaQuery.of(context).size.height / 2) + 140,
              width: MediaQuery.of(context).size.width - 20,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                // color: Colors.grey,
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/tt.jpg'))),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width - 120,
                                  margin: EdgeInsets.only(bottom: 6),
                                  // color: Colors.green,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Shehan sandeepa",
                                        style: GoogleFonts.raleway(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "May 06, 2021",
                                        style: GoogleFonts.raleway(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color:
                                                Colors.grey.withOpacity(0.8)),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  "Owner",
                                  style: GoogleFonts.raleway(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey.withOpacity(0.8)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        "blaaa blaaa blaaaa blaaaaaaaaaaaaa blaa blaaaa blaaa blaaa blaaa blaaaaaaaaaaaaaaaaaa blaaa blaaaa blaaaa blaaaa blaa blaaaaaaa blaa blaaa blaaaa",
                        style: GoogleFonts.raleway(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Colors.black.withOpacity(0.6)),
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
              bottom: 0,
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                width: MediaQuery.of(context).size.width,
                child: Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 7,
                                spreadRadius: 2,
                                color: primaryGreen.withOpacity(0.5),
                                offset: Offset(0, 4),
                              )
                            ],
                            color: primaryGreen,
                            borderRadius: BorderRadius.circular(15)),
                        width: 50,
                        height: 40,
                        child: Icon(
                          FontAwesomeIcons.heart,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 200,
                        height: 40,
                        decoration: BoxDecoration(
                            color: primaryGreen,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 7,
                                spreadRadius: 2,
                                color: primaryGreen.withOpacity(0.5),
                                offset: Offset(0, 4),
                              )
                            ],
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          "Adoption",
                          style: GoogleFonts.raleway(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
