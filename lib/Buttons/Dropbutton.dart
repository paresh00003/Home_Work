import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home() ,
    );
  }
}

class Home extends StatelessWidget {


  List<String>  items = <String>[
    'one'
    'two'
    'three'
    'four'
    'five'
    'six'
    'seven'
    'haight'
    'nine'
    'ten'
  ];

  String Dropdownvalue = 'one';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body:  DropdownButton<String>(

        value: Dropdownvalue,
        items: items.map<DropdownMenuItem<String>>(
            (String value){

              return  DropdownMenuItem(
                  value: value,
                  child: Text("value")
              );
            },
        ).toList(),

        onChanged: (String? newvalue)
        {
          setState((){Dropdownvalue = newvalue!;});


        },

      )
    );
  }

  void setState(Null Function() param0) {}
}

