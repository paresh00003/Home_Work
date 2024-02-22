import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: SliderNew(),
    );
  }
}

class SliderNew extends StatefulWidget {
  const SliderNew({super.key});

  @override
  State<SliderNew> createState() => _SliderNewState();
}

class _SliderNewState extends State<SliderNew> {

  double _slidervalue = 0;

  var _rangeslider = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Slider(value:_slidervalue,
              activeColor: Colors.red ,
              inactiveColor: Colors.red.shade100,

              divisions: 10,



              max: 100,
              min: 0,

              secondaryTrackValue: _slidervalue <=80 ? _slidervalue + 10 : 100,
              secondaryActiveColor: Colors.red.shade200,



              label: '${_slidervalue.toInt()}',


              onChanged: (value) {

              setState(() {

                _slidervalue = value;
              });
            },),


            SizedBox(height: 20,),


            RangeSlider(values: _rangeslider,
              divisions: 20,
              min: 0,
              max: 100,
              activeColor: Colors.green,
              inactiveColor: Colors.green.shade100,



              labels: RangeLabels('${_rangeslider.start}', '${_rangeslider.end}'),
              onChanged: (value) {

              setState(() {

                _rangeslider = value;
              });

            },)
          ],
        )
      ),
    );
  }
}

