import 'package:flutter/material.dart';
import 'package:homework/assignmentpractice/ranagescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputScreen(),
    );
  }
}

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  TextEditingController startController = TextEditingController();
  TextEditingController endController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Range Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: startController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter start number'),
            ),
            TextField(
              controller: endController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter end number'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(start: int.parse(startController.text),
                  end: int.parse(endController.text),),));
              },
              child: Text('Show Numbers'),
            ),
          ],
        ),
      ),
    );
  }
}

