import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Slider Widget', home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _currentSliderValue = 0;
  var _currentRangeValue = RangeValues(20, 30);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: _currentSliderValue,
              max: 100,
              min: 0,
              /*divisions: 5,*/
              activeColor: Colors.purple,
              inactiveColor: Colors.grey.shade400,
              secondaryTrackValue:
              _currentSliderValue <= 80 ? _currentSliderValue + 20 : 100,
              secondaryActiveColor: Colors.purple.shade200,
              label: '${_currentSliderValue.toInt()}',
              onChanged: (value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            RangeSlider(
              values: _currentRangeValue,
              min: 0,
              max: 100,
              divisions: 5,
              labels: RangeLabels('${_currentRangeValue.start}', '${_currentRangeValue.end}'),
              onChanged: (value) {
                setState(() {
                  _currentRangeValue = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
