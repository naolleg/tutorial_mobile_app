import 'package:flutter/material.dart';
import 'package:tutorial_mobile_app/pages/homepage.dart';
import 'package:tutorial_mobile_app/pages/introPage.dart';
import 'package:tutorial_mobile_app/pages/signin.dart';
import 'package:tutorial_mobile_app/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: IntroScreen(),
    );
  }
}
