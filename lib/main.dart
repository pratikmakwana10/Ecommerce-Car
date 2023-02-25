import 'package:flutter/material.dart';
import 'package:simple_food_app/screens/homepage.dart';
import 'package:simple_food_app/screens/practice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const Practice(),
    );
  }
}
