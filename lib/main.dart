
import 'package:firebase_core/firebase_core.dart';
import 'package:pestanddisease1/pages/home.dart';
import 'package:flutter/material.dart';
import './pages/home.dart';
import 'pages/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Navigation',
      home:  LoginPage(),
    );
  }
}
