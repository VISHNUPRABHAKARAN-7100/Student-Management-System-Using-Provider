import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_management_system_using_provider/controller/student_controller.dart';
import 'package:student_management_system_using_provider/view/student_details/student_details.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final nameController = TextEditingController();
  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Name',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: ageController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Age',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple,
              ),
              child: TextButton(
                onPressed: () {
                  if (ageController.text.isEmpty &&
                      nameController.text.isEmpty) {
                    return;
                  } else {
                    Provider.of<StudentController>(context, listen: false)
                        .addStudent(nameController.text, ageController.text);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StudentDetails(),
                        ));
                  }
                },
                child: const Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
