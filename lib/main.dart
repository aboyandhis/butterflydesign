import 'package:butterfly_dart/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Butterfly Design',
      theme: ThemeData(
 
        primarySwatch: Colors.deepPurple,
        primaryColor: Colors.purple[300],
        accentColor: Colors.yellow[400],
      ),//Todo
      home: Home()
    );
  }
}
