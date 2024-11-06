import 'package:flutter/material.dart';
import 'package:tutorial_mobile_app/model/courses.dart';

class courseList extends StatelessWidget {
  final List<CourseModel> courses;

  const courseList({required this.courses, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: EdgeInsets.only(left: 20.0),
      child: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return ListTile(
            leading: Image.asset(course.image,
                width: 50, height: 50, fit: BoxFit.cover),
            title: Text(course.courseName),
            subtitle: Text('${course.lessons} • ${course.duration}'),
          );
        },
      ),
    );
  }
}
