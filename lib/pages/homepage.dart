// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tutorial_mobile_app/model/instructors.dart';
import 'package:tutorial_mobile_app/widgets/appbar.dart';
import 'package:tutorial_mobile_app/widgets/courseSubNav.dart';
import 'package:tutorial_mobile_app/widgets/discover.dart';
import 'package:tutorial_mobile_app/widgets/instructorslist.dart';

class homepage extends StatefulWidget {
  homepage({super.key});

  List<InstructorModel> instructors = [];
  void _getInitialInfo() {
    instructors = InstructorModel.getInstructors();
  }

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int selectedCourseIndex = 0; // Track the selected course index

  @override
  void initState() {
    super.initState();
    widget._getInitialInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DiscoverySection(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Instructor',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 231, 125, 125),
                  ),
                ),
              ],
            ),
          ),
          InstructorList(instructors: widget.instructors),
          SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Courses',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Coursesubnav(
            selectedCourseIndex: selectedCourseIndex,
            onCourseSelected: (index) {
              setState(() => selectedCourseIndex = index);
            },
          ),
        ],
      ),
    );
  }
}
