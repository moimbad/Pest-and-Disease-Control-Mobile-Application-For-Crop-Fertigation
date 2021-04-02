import 'dart:async';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Loader extends StatefulWidget {
  @override
  _LoaderState createState() => _LoaderState();

}

class _LoaderState extends State<Loader> {
  @override
  void initState() {
    super.initState();
    goToRecommends();
  }

  void goToRecommends() async {
    await Future.delayed(
        Duration(seconds: 2),
            () => Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.fade, child: Recommendations())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
              Text(
                "Loading",
                style: TextStyle(
                    color: Colors.black, fontFamily: "Marker", fontSize: 30.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Recommendations extends StatelessWidget {
  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Welcome to Flutter",
        home: new Material(
            child: new Container (
                padding: const EdgeInsets.all(30.0),
                color: Colors.white,
                child: new Container(
                  child: new Center(
                      child: new Column(
                          children : [
                            new Padding(padding: EdgeInsets.only(top: 140.0)),
                            new Text('Beautiful Flutter TextBox',
                              style: new TextStyle(color: hexToColor("#F2A03D"), fontSize: 25.0),),
                            new Padding(padding: EdgeInsets.only(top: 50.0)),
                            new TextFormField(
                              decoration: new InputDecoration(
                                labelText: "Enter Email",
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(
                                  ),
                                ),
                                //fillColor: Colors.green
                              ),
                              validator: (val) {
                                if(val.length==0) {
                                  return "Email cannot be empty";
                                }else{
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.emailAddress,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                          ]
                      )
                  ),
                )
            )
        )
    );
  }
}

