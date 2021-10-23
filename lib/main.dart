import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/screens/Start.dart';
import 'package:flutter_travel_ui/screens/home_screen.dart';
//import 'package:flutter_travel_ui/screens/home_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel UI',
      debugShowCheckedModeBanner: false,
     theme: ThemeData(
        primaryColor: Color(0xFF444C8C),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFF444C8C),
      ),
      home: Start(),
    );
  }
}
