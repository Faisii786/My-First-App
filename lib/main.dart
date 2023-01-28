import 'package:flutter/material.dart';
import 'package:home/Second_Screen.dart';
import 'package:home/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: Text("Flutter App"),
      home: loginPage(),
    );
  }
}
