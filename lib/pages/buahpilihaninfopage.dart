import 'package:flutter/material.dart';
import 'package:pestanddisease1/pages/ciliinfo.dart';
import 'package:pestanddisease1/pages/rockmeloninfo.dart';
import './displaycili.dart';
import 'package:page_transition/page_transition.dart';
import 'haliainfo.dart';
class FaceShapePage extends StatefulWidget {
  @override
  _FaceShapePageState createState() => _FaceShapePageState();
}

class _FaceShapePageState extends State<FaceShapePage> {
  final scrollController = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: scrollController,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Choose Fertigation Crops",
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: MediaQuery.of(context).size.height*0.04,
                fontFamily: "Marker",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: HairDisplayPage())),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Image.asset(
                        "images/gambarcili.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Cili",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26.0,
                          fontFamily: 'Marker'),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: HairDisplayPage1())),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Image.asset(
                        "images/rockmelon.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "RockMelon",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26.0,
                          fontFamily: 'Marker'),
                    ),
                  )

                ],
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: HairDisplayPage2())),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Image.asset(
                        "images/halia.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Halia",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26.0,
                          fontFamily: 'Marker'),
                    ),
                  )

                ],
              ),

            ),
          ),
        ],
      ),
    );
  }
}
