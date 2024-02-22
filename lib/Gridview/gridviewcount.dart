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


  var arrcolors = [
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.orange,
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.orange,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(



          child: GridView.count(crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,

          children: [

            Container(color: arrcolors[0],),
            Container(color: arrcolors[1],),
            Container(color: arrcolors[2],),
            Container(color: arrcolors[3],),
            Container(color: arrcolors[4],),
            Container(color: arrcolors[5],),
            Container(color: arrcolors[6],),
            Container(color: arrcolors[7],),
            Container(color: arrcolors[8],),
            Container(color: arrcolors[9],),

          ],)




          ),
        );


  }
}

