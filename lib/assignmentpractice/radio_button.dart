import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Radiobutton(),
    );
  }
}

class Radiobutton extends StatefulWidget {
  const Radiobutton({super.key});

  @override
  State<Radiobutton> createState() => _RadiobuttonState();
}

class _RadiobuttonState extends State<Radiobutton> {

  int ? option;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Radio(value: 0,
                  groupValue: option
                  , onChanged: (value) {

                    onchecked(value);

                  },),

                Text("india"),




              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Radio(value: 1,
                  groupValue: option
                  , onChanged: (value) {



                    onchecked(value);

                  },),

                Text("india"),




              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Radio(value: 2,
                  groupValue: option
                  , onChanged: (value) {

                    onchecked(value);

                  },),

                Text("india"),




              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Radio(value: 3,
                  groupValue: option
                  , onChanged: (value) {

                    onchecked(value);

                  },),

                Text("india"),




              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Radio(value: 4,
                  groupValue: option
                  , onChanged: (value) {

                    onchecked(value);

                  },),

                Text("india"),




              ],
            ),

          ],
        ),
      ),
    );
  }

  void onchecked(int? value) {

    setState(() {

      option = value;
    });
  }
}



