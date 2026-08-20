import 'package:flutter/material.dart';
import 'package:grocery_app/screens/bottom_nav_screen.dart';
import 'package:grocery_app/screens/login.dart';
import 'package:grocery_app/screens/signup.dart';

void main() {
  runApp( GroceryApp());
}

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavScreen(),
    );
  }
}