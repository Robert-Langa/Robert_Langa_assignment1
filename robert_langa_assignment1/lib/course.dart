import 'student.dart';
import 'displayable.dart';

// Represents a course with enrollment capacity and registered students.
class Course implements Displayable {
  // Core course attributes.
  int code;
  String title;
  int capacity;

  // Maintains a list of students currently enrolled in this course.
  List<Student> students = [];

  Course({
    required this.code,
    required this.title,
    required this.capacity,
  });

  // Displays course details and the list of enrolled students.
  @override
  void displayInfo() {
    print("Course: $code, Title: $title, Capacity: $capacity");
    print("Enrolled Students:");

    if (students.isEmpty) {
      print("No students enrolled");
    } else {
      for (var student in students) {
        print(
          "Name: ${student.name}, Email: ${student.email}, GPA: ${student.gpa}",
        );
      }
    }
  }

  // Returns a string representation of the course.
  @override
  String toString() {
    return "Course: $code, Title: $title, Capacity: $capacity";
  }
}
