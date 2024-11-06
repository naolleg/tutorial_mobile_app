// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DiscoverySection extends StatelessWidget {
  const DiscoverySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Color.fromARGB(255, 243, 231, 226),
        ),
        padding: const EdgeInsets.all(24.0),
        height: 100,
        width: double.infinity,
        child: Row(
          children: [
            Text(
              "Discover how \n To Be Creative",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 231, 125, 125),
              ),
            ),
            SizedBox(width: 56),
            Transform.scale(
              scale: 1.7,
              child: Image.asset('assets/images/rocket.png'),
            ),
          ],
        ),
      ),
    );
  }
}
