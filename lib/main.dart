import 'package:flutter/material.dart';
import 'package:iitrpr/screens/campus_map.dart';
import 'package:iitrpr/screens/contact_us.dart';
import 'package:iitrpr/screens/home_page.dart';
import 'package:iitrpr/screens/places_visit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.limeAccent[400],
      ),
      title: 'IIT Ropar Guide',
      home: HomePage(),
    );
  }
}
