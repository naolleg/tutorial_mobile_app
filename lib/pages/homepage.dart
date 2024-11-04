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
              "Hi, Naol Legesse 👋",
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color.fromARGB(255, 243, 231, 226),
              ),
              padding: const EdgeInsets.all(24.0),
              height: 100,
              width: double.infinity,
              child: Row(children: [
                Text(
                  "Discover How \n To Be Creative",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 231, 125, 125)),
                ),
                SizedBox(width: 56),
                Transform.scale(
                  scale: 1.7, // Increases the size by 1.5 times the original
                  child: Image.asset('assets/images/rocket.png'),
                )
              ]),
            ),
          ),
          Row(children: [
            SizedBox(width: 20),
            Text(
              'Instructor',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 180),
            Text(
              'See All',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 231, 125, 125)),
            )
          ]),
        ],
      ),
    );
  }
}
