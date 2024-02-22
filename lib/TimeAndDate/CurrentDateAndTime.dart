import 'dart:js_util';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    
    var time = DateTime.now();

    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('current time , ${time.day} : ${time.month} : ${time.year}', style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30,


              ),),

              ElevatedButton(onPressed: () {

                setState(() {

                });
              }, child: Text('current time'))
            ],
          ),
        )
    );
  }

  void setState(Null Function() param0) {}



}

