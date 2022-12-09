import 'package:flutter/material.dart';
import 'package:gaming/screens/main_screen.dart';
// import 'package:rock_paper_scisor_game/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp (
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
