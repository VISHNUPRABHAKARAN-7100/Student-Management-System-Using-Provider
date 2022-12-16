import 'package:flutter/cupertino.dart';
import 'package:student_management_system_using_provider/model/student_model.dart';

class StudentController with ChangeNotifier {
  String name = '';
  String age = '';
  List<StudentModel> studentList = [];
  addStudent(String name, String age) {
    StudentModel studentModel = StudentModel(name: name, age: age);
    studentList.add(studentModel);
    notifyListeners();
  }

  getStudent() {
    return studentList;
  }
}
