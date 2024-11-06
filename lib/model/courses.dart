class CourseModel {
  String courseName;
  String image;
  String duration;
  String lessons;

  CourseModel(
      {required this.courseName,
      required this.image,
      required this.duration,
      required this.lessons});

  static List<CourseModel> getCourses() {
    List<CourseModel> Courses = [];

    Courses.add(
      CourseModel(
          courseName: 'Learn webdevelopment',
          image: 'assets/images/Vector illustration.jpeg',
          lessons: '24 lessons',
          duration: '2Hr 30 Min'),
    );

    Courses.add(
      CourseModel(
          courseName: 'Learn UI/UX Design',
          image: 'assets/images/UI UX Design Illustration.jpeg',
          lessons: '24 lessons',
          duration: '2Hr 30 Min'),
    );

    Courses.add(
      CourseModel(
          courseName: 'Learn webdevelopment',
          image: 'assets/images/Vector illustration.jpeg',
          lessons: '24 lessons',
          duration: '2Hr 30 Min'),
    );

    // Courses.add(
    //   CourseModel(
    //   courseName: 'Learn webdevelopment',
    //     image: 'assets/images/_.jpeg',
    //     lessons: '24 lessons',
    //     duration:'2Hr 30 Min'
    //   ),
    // );

    return Courses;
  }
}
