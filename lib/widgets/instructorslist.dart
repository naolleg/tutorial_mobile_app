import 'package:flutter/material.dart';
import 'package:tutorial_mobile_app/model/instructors.dart';

class InstructorList extends StatelessWidget {
  final List<InstructorModel> instructors;

  const InstructorList({required this.instructors, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.only(left: 20.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: instructors.length,
        itemBuilder: (context, index) {
          final instructor = instructors[index];
          return Container(
            width: 80,
            margin: EdgeInsets.only(right: 10.0),
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    instructor.profilePath,
                    height: 60.0,
                    width: 60.0,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  instructor.name,
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
