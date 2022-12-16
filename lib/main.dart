import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_management_system_using_provider/controller/student_controller.dart';
import 'package:student_management_system_using_provider/view/home_screen.dart/home_screen.dart';
import 'package:student_management_system_using_provider/view/student_details/student_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StudentController(),
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
