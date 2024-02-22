import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: QuestionScreen52(),
    );
  }
}






class QuestionScreen52 extends StatefulWidget {
  const QuestionScreen52({super.key});

  @override
  State<QuestionScreen52> createState() => _QuestionScreen52State();
}

class _QuestionScreen52State extends State<QuestionScreen52> {


  final _firstcontroller = TextEditingController();
  final _secondcontroller = TextEditingController();

  var Result = " ";

  int ? option;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 52'
        ),
      ),
      body: Center(

        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
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







                    ElevatedButton(
  onPressed: () {

    var first = _firstcontroller.text.toString().isEmpty ? 0 :  int.parse(_firstcontroller.text.toString());
    var second = _secondcontroller.text.toString().isEmpty ? 0 : int.parse(_secondcontroller.text.toString());

    var sum = first + second ;



    setState(() {

      Result = "The sum of $first and $second is $sum ";

    });

  },
  child:   Radio(value: 0, groupValue: option, onChanged: (value) {



    setState(() {



      option = value;

    });

  },),
),


                    SizedBox(height: 5,),


                    ElevatedButton(
                      onPressed: () {

                        var first = _firstcontroller.text.toString().isEmpty ? 0 :  int.parse(_firstcontroller.text.toString());
                        var second = _secondcontroller.text.toString().isEmpty ? 0 : int.parse(_secondcontroller.text.toString());

                        var sum = first - second ;



                        setState(() {

                          Result = "The sum of $first and $second is $sum ";

                        });

                      },
                      child:   Radio(value: 0, groupValue: option, onChanged: (value) {



                        setState(() {



                          option = value;

                        });

                      },),
                    ),

                    SizedBox(height: 5,),


                    ElevatedButton(
                      onPressed: () {

                        var first = _firstcontroller.text.toString().isEmpty ? 0 :  int.parse(_firstcontroller.text.toString());
                        var second = _secondcontroller.text.toString().isEmpty ? 0 : int.parse(_secondcontroller.text.toString());

                        var sum = first * second ;



                        setState(() {

                          Result = "The sum of $first and $second is $sum ";

                        });

                      },
                      child:   Radio(value: 0, groupValue: option, onChanged: (value) {



                        setState(() {



                          option = value;

                        });

                      },),
                    ),


                    SizedBox(height: 5,),


                    ElevatedButton(
                      onPressed: () {

                        var first = _firstcontroller.text.toString().isEmpty ? 0 :  int.parse(_firstcontroller.text.toString());
                        var second = _secondcontroller.text.toString().isEmpty ? 0 : int.parse(_secondcontroller.text.toString());

                        var sum = first ~/ second ;



                        setState(() {

                          Result = "The sum of $first and $second is $sum ";

                        });

                      },
                      child:   Radio(value: 0, groupValue: option, onChanged: (value) {



                        setState(() {



                          option = value;

                        });

                      },),
                    ),





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

