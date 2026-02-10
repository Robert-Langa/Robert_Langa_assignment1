import 'person.dart';
import 'course.dart';
import 'displayable.dart';

// I created a class Student that inherits from the Person class 
class Student extends Person implements Displayable {
  double _gpa;
  List<Course> courses = [];

  Student({
    required super.id,
    required super.name,
    super.email,
    double gpa = 0.0,
  }) : _gpa = gpa;

  //The getRole method was overridden to display "Student"
  @override
  String getRole() {
    return "Student";
  }

  //Getter for gpa with validation logic
  double get gpa => _gpa;

  //Setter for gpa with validation logic
  set gpa(double value) {
    if (value < 0 || value > 4.0) {
      _gpa = 0.0;
    } else {
      _gpa = value;
    }
  }

  // Sets the student's GPA while enforcing the valid range (0.0 – 4.0).
  void setGPA(double value) {
    gpa = value;
  }

  // Registers the student in a course and ensures both the student
  // and course maintain consistent enrollment data.
  void registerCourse(Course course) {
    print("Registering course: ${course.title} for $name ...");

    if (courses.contains(course)) {
      throw Exception("Course can't be registered, already registered");
    }

    if (course.students.length >= course.capacity) {
      throw Exception("Course can't be registered, course capacity is full");
    }

    // After we have gone through the validation, we will add the course to the list
    courses.add(course);
    course.students.add(this);

    print("Course registered successfully");
  }

  void dropCourse(Course course) {
    print("Dropping course: ${course.title} for $name ...");

    if (!courses.contains(course)) {
      throw Exception("Course not found, can't drop.");
    }

    // After we have gone through the validation, we will remove the course to the list
    courses.remove(course);
    course.students.remove(this);

    print("Course dropped successfully");
  }

  //The displayInfo method will be overridden to display the information for this class
  @override
  void displayInfo() {
    print("Name: $name, Email: $email GPA: $_gpa");
    print("Registered courses:");

    //All the registered courses will be displayed here
    for (var course in courses) {
      print(course.toString());
    }
  }

  //This method will overide the class and return in the format returned below
  @override
  String toString() {
    return "Name: $name, Email: $email GPA: $_gpa";
  }
}
