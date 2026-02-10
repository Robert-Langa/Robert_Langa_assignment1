import 'course.dart';
import 'student.dart';
import 'instructor.dart';
import 'person.dart';

void main(List<String> arguments) {
  Course c1 = Course(code: 101, title: "Programming Concept 1", capacity: 3);
  Course c2 = Course(
    code: 102,
    title: "Programming Mobile Apps 2",
    capacity: 3,
  );

  Student s1 = Student(id: 1, name: "Mike", email: "mike@yahoo.com", gpa: 3.4);
  Student s2 = Student(id: 2, name: "Ryan", email: "ryan@hotmail.com");
  s2.setGPA(123); // gpa only allowed 0-4.0
  Student s3 = Student(id: 3, name: "Sara", email: "sara@gmail.com");
  s3.setGPA(3.8);
  Student s4 = Student(id: 4, name: "Jason", email: "jason@gmail.com");

  print("\n-----------------");
  print("Register courses");
  print("-----------------");
  try {
    s1.registerCourse(c1);
    s2.registerCourse(c1);
    s3.registerCourse(c1);
    s1.registerCourse(c2); // Mike's 2nd course

    s4.registerCourse(c1); // should throw exception
  } catch (e) {
    print(e);
  }

  print("\n-----------------------------");
  print("Registering the same course");
  print("-----------------------------");
  try {
    s1.registerCourse(c1); // should throw exception
  } catch (e) {
    print(e);
  }

  print("\n------------------");
  print("All Courses' info");
  print("------------------");
  c1.displayInfo();
  c2.displayInfo();

  print("\n-----------------");
  print("All Students' info");
  print("-----------------");
  s1.displayInfo();
  s3.displayInfo();
  s4.displayInfo();

  print("\n-----------------");
  print("Dropping course");
  print("-----------------");
  try {
    s1.dropCourse(c1);
    s2.dropCourse(c2); //should throw exception
  } catch (e) {
    print(e);
  }

  print("\n------------------------------------------------------------");
  print("Displaying student and course info after dropping a course");
  print("------------------------------------------------------------");
  s1.displayInfo();
  c1.displayInfo();

  print("\n----------------------------------------");
  print("Creating instructors and displaying info");
  print("----------------------------------------");
  var i1 = Instructor(id: 999, name: "James");
  Instructor i2 = Instructor(
    id: 998,
    name: "John",
    email: "john@hotmail.com",
    department: "EE",
  );
  i1.teach(c1);
  i1.displayInfo();
  i2.displayInfo();

  print("\n-------------------------------------------");
  print("Adding all Person type objects in one list");
  print("-------------------------------------------");
  List<Person> allObjects = [];
  allObjects.add(s1);
  allObjects.add(s2);
  allObjects.add(s3);
  allObjects.add(s4);

  allObjects.add(i1);
  allObjects.add(i2);

  for (var item in allObjects) {
    print(item.getRole());
  }
}
