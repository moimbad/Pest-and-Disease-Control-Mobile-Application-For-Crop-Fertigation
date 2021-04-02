import 'package:flutter/material.dart';
import 'package:pestanddisease1/pages/home.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(50.0))),
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 110),
                  child: Image.asset(
                    "images/login.jpg",
                    height: 100.0,
                    width: 1000.0,
                  ),
                ),
              )
            ],
          ),
          LoginForm(),

        ],
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(""),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () async {
                /*if (_formKey.currentState.validate()) {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                }*/
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: Home()));
              },
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.black),
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Center(
                      child: Text(
                        "START",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontFamily: "Marker"),
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
