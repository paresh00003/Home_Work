import 'package:flutter/material.dart';

class QuestionScreen53 extends StatefulWidget {
  const QuestionScreen53({super.key});

  @override
  State<QuestionScreen53> createState() => _QuestionScreen53State();
}

class _QuestionScreen53State extends State<QuestionScreen53> {

  bool click = true;

  void ClickIcon ()
  {
    setState(() {

      click =! click ;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  (click == false) ? Colors.cyanAccent : Colors.white ,
        appBar: AppBar(
          title: Text('Question 53'),
        ),
        body: Center(
          child: ElevatedButton(onPressed: (){

            ClickIcon();

          }, child: Icon(Icons.ads_click,size: 50,),
          ),
        )
    );
  }
}

