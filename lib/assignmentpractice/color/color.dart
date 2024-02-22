import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Color Picker App'),
        ),
        body: ColorPicker(),
      ),
    );
  }
}

class ColorPicker extends StatefulWidget {
  @override
  _ColorPickerState createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  Color selectedColor = Colors.red; // Default color

  void changeColor(Color color) {
    setState(() {
      selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: Colors.red,
                groupValue: selectedColor,
                onChanged: (value) {
                  changeColor(value as Color);
                },
              ),
              Text('Red'),
              Radio(
                value: Colors.blue,
                groupValue: selectedColor,
                onChanged: (value) {
                  changeColor(value as Color);
                },
              ),
              Text('Blue'),
              Radio(
                value: Colors.green,
                groupValue: selectedColor,
                onChanged: (value) {
                  changeColor(value as Color);
                },
              ),
              Text('Green'),
            ],
          ),
          SizedBox(height: 16),
          Container(
            width: 100,
            height: 100,
            color: selectedColor,
          ),
        ],
      ),
    );
  }
}
