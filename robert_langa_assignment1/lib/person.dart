// Person is an abstract base class representing common attributes
// shared by Students and Instructors.
abstract class Person {
  // Three fields with the person class namely id, name and email
  int id;
  String name;
  String email;

  //The person constructor was created and the email is optional and has
  // a default value and that is my email address
  Person({
    required this.id,
    required this.name,
    this.email = "default@gmail.com",
  });

  //The getRole method was created that will be overridden in other classes as a method
  String getRole();
}
