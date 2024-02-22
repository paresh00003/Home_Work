import 'package:flutter/material.dart';

class QuestionScreen50 extends StatefulWidget {

  @override
  State<QuestionScreen50> createState() => _QuestionScreen50State();
}

class _QuestionScreen50State extends State<QuestionScreen50> {

  final _inputnumber = TextEditingController();

  String _reverseinputnumber = '';

  void Reversenumber(){

    setState(() {

      // String Userinput = _inputnumber.text;

      String reverseinput = _inputnumber.text.split('').reversed.join();

      _reverseinputnumber = reverseinput;
    });


  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Question 50'),
      ),
      body:

      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            TextField(
              controller: _inputnumber,
              keyboardType: TextInputType.number,

              decoration: InputDecoration(
                  hintText: "Number"
              ),
            ),

            ElevatedButton(onPressed: (){

              Reversenumber();

              int _number = _inputnumber.text.trim().isEmpty ? 0 : int.parse(_inputnumber.text.trim());


            }, child: Text("REVERSE")),


            SizedBox(height: 30,),

            Text("Reversed Number : $_reverseinputnumber",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),




          ],
        ),
      ),
    );
  }
}






