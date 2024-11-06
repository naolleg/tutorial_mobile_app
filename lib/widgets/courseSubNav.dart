import 'package:flutter/material.dart';

class Coursesubnav extends StatelessWidget {
  final int selectedCourseIndex;
  final Function(int) onCourseSelected;

  const Coursesubnav({
    required this.selectedCourseIndex,
    required this.onCourseSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int index = 0; index < 4; index++)
            TextButton(
              onPressed: () => onCourseSelected(index),
              child: Text(
                ['All', 'Design', 'Programming', 'Gaming'][index],
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  decoration: selectedCourseIndex == index
                      ? TextDecoration.underline
                      : TextDecoration.none,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
