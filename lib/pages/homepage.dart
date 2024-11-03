// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Hi, John Smith 👋",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 81),
            Icon(
              Icons.notifications,
              size: 30.0,
              color: Color.fromARGB(255, 0, 2, 3),
            ),
          ],
        ),
        leading: Container(
          margin: EdgeInsets.all(10),
          child: Image.asset('assets/images/Bitmoji.jpeg'),
        ),
      ),
    );
  }
}
