import 'package:shared_prefrences_practice/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_prefrences_practice/home_screen.dart';
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
      home: const SplashScreen(),
    );
  }
}
