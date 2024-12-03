import 'package:flutter/material.dart';
import 'package:mediacury_class_dec_2/view/homescreen/homescreen.dart';
//responsive web app

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
