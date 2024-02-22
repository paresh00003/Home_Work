import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {


  String result = " ";

  final controll1 = TextEditingController();
  final controll2 = TextEditingController();


  void Calcultion(){

    double Num1 = controll1.text.trim().isEmpty ? 0.0 : double.parse(controll1.text.trim().toString());
    double Num2 = controll2.text.trim().isEmpty ? 0.0 : double.parse(controll2.text.trim().toString());



    setState(() {
      switch(Selectedgroup){

        case 0 :

          result = (Num1 + Num2).toString();


          break;

        case 1 :

          result = (Num1 - Num2).toString();

          break;

        case 2 :


          result = (Num1 * Num2).toString();

          break;

        case 3 :

          result = (Num1 ~/ Num2).toString();

          break;
      }
    });

  }

  int ? Selectedgroup ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextField(
              controller: controll1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: " Enter Number 1"
              ),
            ),

            TextField(
              controller: controll2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: " Enter Number 1"
              ),
            ),

            RadioListTile(value: 0,
                groupValue: Selectedgroup ,
                onChanged:(value) {
                  setState(() {

                    Selectedgroup = value;
                  });
                },title: Text("+"),),


            RadioListTile(value: 1,
              groupValue: Selectedgroup ,
              onChanged:(value) {
                setState(() {

                  Selectedgroup = value;
                });
              },title: Text("-"),),



            RadioListTile(value: 2,
              groupValue: Selectedgroup ,
              onChanged:(value) {
                setState(() {

                  Selectedgroup = value;
                });
              },title: Text("*"),),



            RadioListTile(value: 3,
              groupValue: Selectedgroup ,
              onChanged:(value) {
                setState(() {

                  Selectedgroup = value;
                });
              },title: Text("/"),),


            ElevatedButton(onPressed: () {

              Calcultion();
            },
                child: Text("RESULT")),




            Text("${result}"),








          ],
        ),
      ),
    );
  }
}

