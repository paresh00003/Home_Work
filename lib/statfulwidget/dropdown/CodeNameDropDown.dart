import 'package:flutter/material.dart';
import 'package:homework/statfulwidget/dropdown/country/country.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: COuntry(),
    );
  }
}

class COuntry extends StatefulWidget {
  const COuntry({super.key});

  @override
  State<COuntry> createState() => _COuntryState();
}

class _COuntryState extends State<COuntry> {
  List<Country> CountryList = [
    Country(code: 11, Name: "Surat"),
    Country(code: 20, Name: "Kutch"),
    Country(code: 30, Name: "Dwaraka"),
    Country(code: 22, Name: "Ahemdabad"),
    Country(code: 2, Name: "Bharuch"),
    Country(code: 16, Name: "Junagandh"),
    Country(code: 22, Name: "Ahemdabad2"),
    Country(code: 2, Name: "Bharuch2"),
    Country(code: 16, Name: "Junagandh2"),
  ];

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
          DropdownMenu(
              width: 300,
              // enabled: false,
              enableFilter: true,
              requestFocusOnTap: true,
              trailingIcon: Icon(Icons.menu),
              leadingIcon: Icon(Icons.person),
              label: const Text("Select City"),
              inputDecorationTheme: InputDecorationTheme(
                // filled: false,
                fillColor: Colors.red,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
              dropdownMenuEntries: List.generate(
                  CountryList.length,
                  (index) => DropdownMenuEntry(
                      value: CountryList[index].Name,
                      label: CountryList[index].Name)))
        ],
      )),
    );
  }
}
