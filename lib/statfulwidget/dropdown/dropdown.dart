import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: DropDownBuutton1(),
    );
  }
}

class DropDownBuutton1 extends StatefulWidget {
  const DropDownBuutton1({super.key});

  @override
  State<DropDownBuutton1> createState() => _DropDownBuutton1State();
}

class _DropDownBuutton1State extends State<DropDownBuutton1> {
  int? SelecetedState;

  List<String> StateList = [
    'Gujarat',
    'Delhi',
    'Rajastan',
    'Maharastra',
    'Up',
    'MadhyaPradesh',
    'Utrakhand',
    'Kashmir',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              // isExpanded: true,
              // isDense: true,
              // icon: Icon(Icons.access_time),
              // padding: EdgeInsets.all(20),
              // alignment: Alignment.center,
              dropdownColor: Colors.grey,
              value: SelecetedState,
              items: List.generate(
                  StateList.length,
                  (index) => DropdownMenuItem(
                        child: Text(StateList[index]),
                        value: index,
                      )),
              onChanged: (value) {
                setState(() {
                  SelecetedState = value?.toInt();
                });

              },
            ),
          ],
        ),
      )),
    );
  }
}
