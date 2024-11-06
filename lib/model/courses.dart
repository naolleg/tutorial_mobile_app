class InstructorModel {
  String courseName;
  String image;
  String duration;
  String lessons;

  InstructorModel(
      {required this.courseName,
      required this.image,
      required this.duration,
      required this.lessons});

  static List<InstructorModel> getInstructors() {
    List<InstructorModel> instructors = [];

    instructors.add(
      InstructorModel(
          courseName: 'Learn webdevelopment',
          image: 'assets/images/Vector illustration.jpeg',
          lessons: '24 lessons',
          duration: '2Hr 30 Min'),
    );

    instructors.add(
      InstructorModel(
          courseName: 'Learn UI/UX Design',
          image: 'assets/images/UI UX Design Illustration.jpeg',
          lessons: '24 lessons',
          duration: '2Hr 30 Min'),
    );

    // instructors.add(
    //   InstructorModel(
    //     courseName: 'Learn webdevelopment',
    //     image: 'assets/images/_.jpeg',
    //     lessons: '24 lessons',
    //     duration:'2Hr 30 Min'
    //   ),
    // );

    // instructors.add(
    //   InstructorModel(
    //   courseName: 'Learn webdevelopment',
    //     image: 'assets/images/_.jpeg',
    //     lessons: '24 lessons',
    //     duration:'2Hr 30 Min'
    //   ),
    // );

    return instructors;
  }
}
