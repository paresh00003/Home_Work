import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: isChecked1(),
    );
  }
}

class isChecked1 extends StatefulWidget {
  const isChecked1({super.key});

  @override
  State<isChecked1> createState() => _isChecked1State();
}

class _isChecked1State extends State<isChecked1> {

  bool checkbutton = false;

  bool newChecked2 = false;

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



                Checkbox(value: checkbutton, onChanged: (value) {

                  setState(() {

                    checkbutton  = value!;
                  });


                },),

                Text("Text Box"),


              ],
            ),
            Text(

                checkbutton == true ? 'Tops' : ''

            ),

            CheckboxListTile(value: newChecked2, onChanged: (value) {

              setState(() {

                newChecked2 = value!;

              });
            },

              title: Text("show/hide"),

            ),

            Visibility(

              visible: newChecked2,

              child: Text('Learing flutter'),

            )



          ],
        )
      ),
    );
  }
}

