import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tutorial_mobile_app/model/instructors.dart';

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
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "hi, Naol Legesse 👋",
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
              child: Row(
                children: [
                  Text(
                    "Discover how \n To Be Creative",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 231, 125, 125),
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
          ),
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
          Container(
            height: 100,
            padding: EdgeInsets.only(left: 20.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.instructors.length,
              itemBuilder: (context, index) {
                final instructor = widget.instructors[index];
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
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
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
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Change ElevatedButton to TextButton for an underline effect
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedCourseIndex = 0; // Update the selected index
                    });
                  },
                  child: Text(
                    'All Courses',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: selectedCourseIndex == 0
                          ? TextDecoration.underline
                          : TextDecoration.none,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedCourseIndex = 1;
                    });
                  },
                  child: Text(
                    'Featured',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: selectedCourseIndex == 1
                          ? TextDecoration.underline
                          : TextDecoration.none,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedCourseIndex = 2;
                    });
                  },
                  child: Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: selectedCourseIndex == 2
                          ? TextDecoration.underline
                          : TextDecoration.none,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedCourseIndex = 3;
                    });
                  },
                  child: Text(
                    'New',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: selectedCourseIndex == 3
                          ? TextDecoration.underline
                          : TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0, // Set the initial selected index
        onTap: (index) {
          // handle the tap if needed
        },
      ),
    );
  }
}
