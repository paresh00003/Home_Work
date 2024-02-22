import 'package:flutter/material.dart';
import 'package:homework/ongenerateroutes/model/user.dart';





class FirstRoute extends StatelessWidget {
  // TextEditingController controller = TextEditingController();
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _salaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(hintText: 'Employee name'),
                  keyboardType: TextInputType.name,
                ),
                TextField(
                  controller: _ageController,
                  decoration: InputDecoration(hintText: 'Employee age'),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: _salaryController,
                  decoration: InputDecoration(hintText: 'Employee Salary'),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    String _name = _nameController.text.trim();
                    int _age = _ageController.text.trim().isEmpty
                        ? 0
                        : int.parse(_ageController.text.trim());
                    double _salary = _salaryController.text.trim().isEmpty
                        ? 0.0
                        : double.parse(_salaryController.text.trim());

                    print('''
                name : $_name 
                age : $_age
                salary : $_salary
                ''');

                    var user = User(age: _age, name: _name, salary: _salary);

                    // Navigate to Second Screen
                    Navigator.pushNamed(context, '/second', arguments: user);

                  },
                  child: Text('Navigate to Second'),
                )
              ],
            ),
          )),
    );
  }
}
