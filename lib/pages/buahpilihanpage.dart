import 'package:flutter/material.dart';
import 'package:pestanddisease1/pages/displaycili.dart';
import 'package:pestanddisease1/pages/cilisimtom.dart';
import 'package:pestanddisease1/pages/rockmelonsimtom.dart';
import 'package:pestanddisease1/pages/haliasimtom.dart';
import './displaycili.dart';
import 'package:page_transition/page_transition.dart';

class DressingType extends StatefulWidget {
  @override
  _DressingTypeState createState() => _DressingTypeState();
}

class _DressingTypeState extends State<DressingType> {
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
                      type: PageTransitionType.fade, child: DressUpPage())),
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
                      "Chili",
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
                      type: PageTransitionType.fade, child: DressUpPage1())),
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
                      "Rock Melon",
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
                      type: PageTransitionType.fade, child: DressUpPage4())),
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
                      "Ginger",
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