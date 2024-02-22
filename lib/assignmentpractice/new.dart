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
          title: Text('Calculator App'),
        ),
        body: Calculator(),
      ),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {


  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();


  String result = '';

  int ? selectedOperation; // Default operation


  void calculateResult() {

    double num1 = number1Controller.text.trim().isEmpty ? 0.0 : double.parse(number1Controller.text.trim().toString()) ;
    double num2 = number2Controller.text.trim().isEmpty ? 0.0 : double.parse(number2Controller.text.trim().toString()) ;

    setState(() {


      switch (selectedOperation) {

        case 0:

          result = (num1 + num2).toString();

          break;

        case 1:
          result = (num1 - num2).toString();
          break;

        case 2:
          result = (num1 * num2).toString();
          break;

        case 3:
          result = (num1 ~/ num2).toString();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(


      padding: const EdgeInsets.all(16.0),
      child: Column(


        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          TextField(

            controller: number1Controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Enter Number 1'),
          ),

          TextField(

            controller: number2Controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Enter Number 2'),
          ),


          SizedBox(height: 16),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [


              Radio(

                value: 0,
                groupValue: selectedOperation,
                onChanged: (value) {
                  setState(() {
                    selectedOperation = value;
                  });
                },
              ),
              Text('Addition'),


              Radio(
                value: 1,
                groupValue: selectedOperation,
                onChanged: (value) {
                  setState(() {
                    selectedOperation = value;
                  });
                },
              ),
              Text('Subtraction'),


              Radio(
                value: 2,
                groupValue: selectedOperation,
                onChanged: (value) {
                  setState(() {
                    selectedOperation = value;
                  });
                },
              ),
              Text('Multiply'),


              Radio(
                value: 3,
                groupValue: selectedOperation,
                onChanged: (value) {
                  setState(() {
                    selectedOperation = value;
                  });
                },
              ),
              Text('Divide'),

            ],
          ),
          SizedBox(height: 16),


          ElevatedButton(
            onPressed: (){

              calculateResult();
            },
            child: Text('RESULT',style: TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),),
          ),


          SizedBox(height: 16),

          Text('RESULT = ${result}',style: TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),),
        ],
      ),
    );
  }
}
