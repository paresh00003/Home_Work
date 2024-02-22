import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Checkbox widget', home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isChecked = false, _isTileChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                SizedBox(
                  width: 16,
                ),
                Text('Show/Hide Text'),
              ],
            ),
            Text(_isChecked == true ? 'Tops Technologies' : ''),
            SizedBox(
              height: 20,
            ),
            CheckboxListTile(
              value: _isTileChecked,
              onChanged: (value) {
                setState(() {
                  _isTileChecked = value!;
                });
              },
              title: Text('Show/ hide Text'),
            ),
            Visibility(
              visible: _isTileChecked,
              child: Text('Flutter is Amazing...'),
            )
          ],
        ),
      ),
    );
  }
}
