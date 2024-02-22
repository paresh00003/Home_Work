import 'package:flutter/material.dart';
import 'package:homework/practical/curd_with_data/screen/student_curd_static.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: CurdStatic(),
    );
  }
}
