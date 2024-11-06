// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "hi, Naol Legesse 👋",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 81),
          Icon(Icons.notifications,
              size: 30.0, color: Color.fromARGB(255, 0, 2, 3)),
        ],
      ),
      leading: Container(
        margin: EdgeInsets.all(10),
        child: Image.asset('assets/images/Bitmoji.jpeg'),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
