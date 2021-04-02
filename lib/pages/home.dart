import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import './buahpilihanpage.dart';
import 'package:page_transition/page_transition.dart';
import './buahpilihaninfopage.dart';
import './settings.dart';
import './helpmeshop.dart';
import 'package:firebase_core/firebase_core.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scrollController = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: scrollController,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Pest And Disease Recommender Application",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Marker",
                fontSize: 26.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DressingType())),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Image.asset(
                        "images/find.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Find Disease",
                      style: TextStyle(
                          color: Colors.white,
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
              onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: FaceShapePage())),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Image.asset(
                        "images/info.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Disease Info",
                      style: TextStyle(
                          color: Colors.white,
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
              onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Loader())),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Image.asset(
                        "images/3.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Help",
                      style: TextStyle(
                          color: Colors.white,
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
              onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: SettingsPage())),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Image.asset(
                        "images/4.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "REVIEWS",
                      style: TextStyle(
                          color: Colors.white,
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