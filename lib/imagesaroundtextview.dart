import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: QuestionScreen56(),
    );
  }
}

class QuestionScreen56 extends StatefulWidget {
  const QuestionScreen56({super.key});

  @override
  State<QuestionScreen56> createState() => _QuestionScreen56State();
}

class _QuestionScreen56State extends State<QuestionScreen56> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,


          children: [

            Expanded(

              child: Image(image: AssetImage("assets/images/virat-kohli-reuters.jpg"),),


            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Expanded(

                  child: Image (image: AssetImage("assets/images/virat-kohli-reuters.jpg"),),


                ),

                Container(
                  child: Text('Most Odi Centuries',style: TextStyle(

                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),),
                ),

                Expanded(

                  child: Image(image: AssetImage("assets/images/virat-kohli-reuters.jpg"),),


                ),


              ],



            ),


            Expanded(

              child: Image(image: AssetImage("assets/images/virat-kohli-reuters.jpg"),),


            ),
          ],
        ),
      ),
    );
  }
}

