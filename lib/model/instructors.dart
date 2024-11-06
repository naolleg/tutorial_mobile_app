class InstructorModel {
  String name;
  String profilePath;

  InstructorModel({
    required this.name,
    required this.profilePath,
  });

  static List<InstructorModel> getInstructors() {
    List<InstructorModel> instructors = [];

    instructors.add(
      InstructorModel(
        name: 'Semerech',
        profilePath: 'assets/images/_.jpeg',
      ),
    );

    instructors.add(
      InstructorModel(
        name: 'Tilahun',
        profilePath: 'assets/images/enter my mind.jpeg',
      ),
    );

    instructors.add(
      InstructorModel(
        name: 'Eddie ginger',
        profilePath: 'assets/images/Type 4_1 Ed Sheeran.jpeg',
      ),
    );

    instructors.add(
      InstructorModel(
        name: 'GOAT',
        profilePath: 'assets/images/Martin Schoeller.jpeg',
      ),
    );

    return instructors;
  }
}
