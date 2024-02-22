
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int start;
  final int end;

  ResultScreen({required this.start, required this.end});

  @override
  Widget build(BuildContext context) {
    List<int> numbers = List.generate(end - start + 1, (index) => start + index);

    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Numbers between $start and $end:'),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: numbers
                  .map((number) => Text(
                number.toString(),
                style: TextStyle(fontSize: 18),
              ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}