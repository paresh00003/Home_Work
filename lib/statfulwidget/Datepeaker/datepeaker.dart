import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Datepeaker1(),
    );
  }
}

class Datepeaker1 extends StatefulWidget {
  const Datepeaker1({super.key});

  @override
  State<Datepeaker1> createState() => _Datepeaker1State();
}

class _Datepeaker1State extends State<Datepeaker1> {
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
          ElevatedButton(
              onPressed: () async {
                var SelecetdDate = await showpekerdailog(context); //create method

                if (SelecetdDate != null) {
                   print('${SelecetdDate.day.toString().padLeft(2, '0')}/${SelecetdDate.month.toString().padLeft(2, '0')}/${SelecetdDate.year}');
                  // String formattedDate =
                  // DateFormat('yyyy-MM-dd').format(SelecetdDate);
                  // print(formattedDate);
                }
              },
              child: Text("Show Date Peaker Dailog"))
        ],
      )),
    );
  }

  Future<DateTime?> showpekerdailog(BuildContext context) async {
    return await showDatePicker(
        context: context,
        initialDate: DateTime(1947, 1, 22),
        firstDate: DateTime(1950),
        lastDate: DateTime.now());
  }
}
