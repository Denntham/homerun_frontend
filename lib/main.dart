import 'package:flutter/material.dart';
import 'package:frontend/widgets/bottomNavigation.dart';

void main() { runApp( MyApp()); }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homerun - Your Home Service Companion',
      debugShowCheckedModeBanner: false,
      home: BottomNavigation(),
    );
  }
}