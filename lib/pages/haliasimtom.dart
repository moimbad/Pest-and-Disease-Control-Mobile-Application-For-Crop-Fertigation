import 'dart:ui';

import 'package:flutter/material.dart';
import './displaycili.dart';
import 'package:page_transition/page_transition.dart';

import 'diplayhalia.dart';

List<List<dynamic>> symptoms = [
  [],

];

List<Map<String, dynamic>> leaves = [
  {'symptom1': 'brownish gold', 'check': false },
  {'symptom1': 'yellow', 'check': false },
  {'symptom1': 'dry', 'check': false},
];

List<Map<String, dynamic>> root = [
  {'symptom': 'no symptoms', 'check': false},
];

List<Map<String, dynamic>> stem = [
  {'symptom2': 'squishy', 'check': false},
  {'symptom2': 'smelly', 'check': false},
  {'symptom2': 'shrink', 'check': false},
  {'symptom2': 'dry', 'check': false},
  {'symptom2': 'yellow', 'check': false},
  {'symptom2': 'dry', 'check': false},
  {'symptom2': 'white spots', 'check': false},

];
class DressUpPage4 extends StatefulWidget {
  @override
  _DressUpPageState createState() => _DressUpPageState();
}

class _DressUpPageState extends State<DressUpPage4> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 23.0, horizontal: 25.0),
            child: Text(
              "What are the symptoms for the root?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.04, fontFamily: 'Marker'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: root.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(root[index]['symptom']),
                    trailing: GestureDetector(
                        onTap: () {
                          setState(() {

                            root[index]['check'] = !root[index]['check'];
                            if (root[index]['check'] == false) {
                              symptoms[0].remove(root[index]['symptom']);
                            }else{
                              symptoms[0].add(root[index]['symptom']);
                            }
                            debugPrint(root[index]['symptom'].toString());
                          });

                        },
                        child: Icon(root[index]['check']
                            ? Icons.check_circle
                            : Icons.check_circle_outline)));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 5.0),
            child: GestureDetector(
              onTap: () => Navigator.push(context,
                  PageTransition(child: DressUpPage2(), type: PageTransitionType.rightToLeft)),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.10,
                width: MediaQuery.of(context).size.width*0.5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text("Done",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.height*0.05,
                        fontFamily: 'Marker',
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DressUpPage2 extends StatefulWidget {
  @override
  _DressUpPage2State createState() => _DressUpPage2State();
}

class _DressUpPage2State extends State<DressUpPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 23.0, horizontal: 25.0),
            child: Text(
              "What are the symptoms for the leaves?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.04, fontFamily: 'Marker'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: leaves.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(leaves[index]['symptom1']),
                    trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            leaves[index]['check'] = !leaves[index]['check'];
                            if (leaves[index]['check'] == false) {
                              symptoms[0].remove(leaves[index]['symptom1']);
                            }else{
                              symptoms[0].add(leaves[index]['symptom1']);
                            }
                          });
                          debugPrint(leaves[index]['symptom1'].toString());
                        },
                        child: Icon(leaves[index]['check']
                            ? Icons.check_circle
                            : Icons.check_circle_outline)));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 5.0),
            child: GestureDetector(
              onTap: () => Navigator.push(context,
                  PageTransition(child: DressUpPage3(), type: PageTransitionType.rightToLeft)),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.10,
                width: MediaQuery.of(context).size.width*0.5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text("Done",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.height*0.05,
                        fontFamily: 'Marker',
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DressUpPage3 extends StatefulWidget {
  @override
  _DressUpPage3State createState() => _DressUpPage3State();
}

class _DressUpPage3State extends State<DressUpPage3> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 23.0, horizontal: 25.0),
            child: Text(
              "What are the symptoms for the stem?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.04, fontFamily: 'Marker'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: stem.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(stem[index]['symptom2']),
                    trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            stem[index]['check'] = !stem[index]['check'];
                            if (stem[index]['check'] == false) {
                              symptoms[0].remove(stem[index]['symptom2']);
                            }else{
                              symptoms[0].add(stem[index]['symptom2']);
                            }
                          });
                          debugPrint(stem[index]['symptom2'].toString());
                        },
                        child: Icon(stem[index]['check']
                            ? Icons.check_circle
                            : Icons.check_circle_outline)));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 5.0),
            child: GestureDetector(
              onTap: () {
                print(symptoms);
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  return DisplayPage2(symptoms);
                }));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.10,
                width: MediaQuery.of(context).size.width*0.5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text("Done",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.height*0.05,
                        fontFamily: 'Marker',
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}