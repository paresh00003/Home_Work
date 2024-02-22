import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorApp(),
    );
  }
}

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  final _firstcontroller = TextEditingController();
  final _secondcontroller = TextEditingController();

  var Result = " ";

  int ? option;

  // Default operation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(

                controller: _firstcontroller,

                keyboardType: TextInputType.number,

                decoration: InputDecoration(

                  hintText: " Enter First Number",
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(

                controller: _secondcontroller,

                keyboardType: TextInputType.number,

                decoration: InputDecoration(

                  hintText: " Enter First Number",
                ),
              ),
            ),




            SizedBox(height: 20),








            Row(
              children: [
                Radio(
                  value: 0,
                  groupValue: option,
                  onChanged: (value) {
                    setState(() {
                      option = value! as int?;
                    });
                  },
                ),
                Text('Add'),



                Radio(
                  value: 'Subtraction',
                  groupValue: option,
                  onChanged: (value) {
                    setState(() {
                      option= value! as int?;
                    });
                  },
                ),


                Text('Subtraction'),
                Radio(
                  value: 'Multiply',
                  groupValue: option,
                  onChanged: (value) {
                    setState(() {
                      option = value as int?;



                    });
                  },
                ),
                Text('Multiply'),
                Radio(
                  value: 'Division',
                  groupValue:option,
                  onChanged: (value) {
                    setState(() {
                      option = value as int?;
                    });
                  },
                ),
                Text('Division'),
              ],
            ),
            SizedBox(height: 20),











            ElevatedButton(
              onPressed: () {

                var first = _firstcontroller.text.toString().isEmpty ? 0 :  int.parse(_firstcontroller.text.toString());
                var second = _secondcontroller.text.toString().isEmpty ? 0 : int.parse(_secondcontroller.text.toString());

                var sum = first - second ;



                setState(() {

                  Result = "The sum of $first and $second is $sum ";

                });

              }, child: Text("Add"),
            ),



            SizedBox(height: 20),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text( "RESULT : $Result " ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            ),






          ],
        ),
      ),
    );
  }


}
