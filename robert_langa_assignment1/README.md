# Author : Robert Langa
# Subject: PROG2436 Programming Mobile Applications

# Course Registration System (Dart Console Application)

This project is a Dart console-based **Course Registration System** developed as part of **PROG Assignment 1**.  
It demonstrates core **Object-Oriented Programming (OOP)** principles through a modular and well-structured design.

The system manages **students, instructors, and courses**, allowing students to register and drop courses while enforcing rules such as course capacity and duplicate enrollment prevention.

---

## 🚀 Features

- Object-Oriented Design using Dart
- Abstract classes and inheritance
- Interfaces using abstract classes
- Polymorphism and method overriding
- Exception handling for invalid operations
- Collections and object relationships
- Modular structure with separate `.dart` files
- Console-based execution with formatted output

---

## 🧱 Class Structure

### 🔹 Person (Abstract Class)
- Fields: `id`, `name`, `email` (optional with default value)
- Abstract method: `getRole()`
- Parent class for `Student` and `Instructor`

### 🔹 Displayable (Abstract Class / Interface)
- Method: `displayInfo()`
- Implemented by all major classes

### 🔹 Course
- Fields: `courseCode`, `title`, `capacity`, `students`
- Manages enrolled students
- Displays course details and enrolled students

### 🔹 Student (extends Person)
- Fields: private `gpa`, list of registered courses
- GPA validation (0.0 – 4.0)
- Register and drop courses with exception handling
- Displays student details and enrolled courses

### 🔹 Instructor (extends Person)
- Fields: `department` (default: CS), `courseTaught`
- Assigns and displays taught course
- Displays instructor details and teaching status

---

## ⚠️ Exception Handling

The system handles invalid operations such as:
- Registering for the same course twice
- Registering when a course is full
- Dropping a course that is not registered

---

## ▶️ How to Run

1. Open the project in **VS Code**
2. Ensure Dart SDK is installed
3. Run the application using the terminal by entering the project folder in which the main.dart is located in by typing the command "cd robert_langa_assignment1" 
4. Then type dart run to run the project
   
 
