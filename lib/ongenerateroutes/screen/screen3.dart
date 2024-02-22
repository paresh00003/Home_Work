import 'package:flutter/material.dart';
import 'package:homework/ongenerateroutes/model/user.dart';



class ThirdRoute extends StatelessWidget {

  User user;


  ThirdRoute(this.user);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Third Route'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('''
            name : ${user.name}
            age : ${user.age}
            salary : ${user.salary}
            address : ${user.address}
            '''),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  // back to previous
                  Navigator.pop(context);
                },
                child: Text('Go Back'),
              )
            ],
          )),
    );
  }
}
