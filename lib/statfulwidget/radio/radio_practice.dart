import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: RadioPractice(),
    );
  }
}

class RadioPractice extends StatefulWidget {
  const RadioPractice({super.key});

  @override
  State<RadioPractice> createState() => _RadioPracticeState();
}

class _RadioPracticeState extends State<RadioPractice> {

  int ok = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          children: [

            Row(

              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Radio(value: 0, groupValue: ok, onChanged: (value) {

                  CheckedOn(value);

                },),

                Text('India'),
              ],
            ),

            Row(

              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Radio(value: 1, groupValue: ok, onChanged: (value) {

                  CheckedOn(value);

                },),

                Text('India'),
              ],
            ),


            Row(

              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Radio(value: 2, groupValue: ok, onChanged: (value) {

                  CheckedOn(value);

                },),

                Text('India'),
              ],
            ),

            Row(

              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Radio(value: 4, groupValue: ok, onChanged: (value) {

                  CheckedOn(value);

                },),

                Text('India'),
              ],
            ),

            Row(

              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Radio(value: 5, groupValue: ok, onChanged: (value) {

                  CheckedOn(value);

                },),

                Text('India'),
              ],
            ),



          ],
        ),
      ),
    );
  }

  void CheckedOn(int? value) {

    setState(() {

      ok= value!;
    });

  }
}

