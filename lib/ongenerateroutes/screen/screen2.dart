import 'package:flutter/material.dart';
import 'package:homework/ongenerateroutes/model/user.dart';





class SecondRoute extends StatelessWidget {

  User user;

  SecondRoute(this.user);

  final _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('''
            name : ${user.name}
            age : ${user.age}
            salary : ${user.salary}
            '''),
                SizedBox(height: 20,),
                TextField(
                  controller: _addressController,
                  decoration: InputDecoration(hintText: 'Employee address'),
                  keyboardType: TextInputType.name,
                ),
                ElevatedButton(
                  onPressed: () {

                    String _address = _addressController.text.trim();

                    user.address = _address;

                    // Navigate to Second Screen
                    Navigator.pushNamed(context, '/third', arguments: user);

                  },
                  child: Text('Navigate to Third'),
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    // back to previous
                    Navigator.pop(context);
                  },
                  child: Text('Go Back'),
                )
              ],
            )),
      ),
    );
  }
}
