import 'person.dart';
import 'course.dart';
import 'displayable.dart';

// Represents an instructor who may teach a course.
class Instructor extends Person implements Displayable {
  String? department;
  Course? courseTaught;

  Instructor({
    required super.id,
    required super.name,
    super.email,
    this.department = "CS",
  });

  // Assigns a course to this instructor.
  void teach(Course course) {
    courseTaught = course;
  }

  // Returns the role of this person as "Instructor".
  @override
  String getRole() {
    return "Instructor";
  }

  // Displays instructor details and the course they are teaching, if there is any.
  @override
  void displayInfo() {
    print("Name: $name, Email: $email, Department: $department");
    print("Teaching:");

    if (courseTaught == null) {
      print("No course assigned");
    } else {
      courseTaught!.displayInfo();
    }
  }

  // Returns a string representation of the instructor.
  @override
  String toString() {
    return "Name: $name, Email: $email, Department: $department";
  }
}
