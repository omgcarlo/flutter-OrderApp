// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/home-screen.dart';
import 'package:flutter_app/Screens/login-screen.dart';
//import 'package:firebase_analytics/firebase_analytics.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    // ignore: prefer_const_constructors
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: LoginScreen(),
      routes: {
        "/home": (_) => new HomeScreen(),
      },
    );
  }
}