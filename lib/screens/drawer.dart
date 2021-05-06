import 'package:flutter/material.dart';
import 'package:flutter_ui_with_drawer/configuration.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  String title;
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
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/tt.jpg'))),
                ),
                Container(
                  // color: Colors.grey,
                  margin: EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shehan sandeepa",
                        style: GoogleFonts.raleway(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white70),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Active member",
                        style: GoogleFonts.raleway(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            // color: Colors.green,
            height: 470,
            child: ListView.builder(
                shrinkWrap: false,
                itemCount: drawerItems.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    height: 50,
                    // color: Colors.black,
                    child: GestureDetector(
                      onTap: () {
                        print(drawerItems[index]["title"]);
                        setState(() {
                          title = drawerItems[index]["title"];
                        });
                      },
                      child: Container(
                        // color: Colors.grey,
                        margin: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Container(
                                child: Icon(
                              drawerItems[index]["icon"],
                              color: Colors.white70,
                            )),
                            Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  drawerItems[index]["title"],
                                  style: GoogleFonts.raleway(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white70),
                                ))
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
