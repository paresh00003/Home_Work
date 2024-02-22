import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Module4(),
    );
  }
}

class Module4 extends StatefulWidget {
  const Module4({super.key});

  @override
  State<Module4> createState() => _Module4State();
}

class _Module4State extends State<Module4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column (


            children: [

              Row(

                children: [

                  Text("Menu",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),),

                  Expanded(
                    child: TextField(



                      decoration: InputDecoration(

                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),



                  Icon(

                    Icons.share,size: 20,),



                ],

              ),


              Row(
                children: [

                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    child: Text("Pizza"),
                    decoration: BoxDecoration(

                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(

                          color: Colors.grey.shade500,
                          spreadRadius: 1,
                          blurRadius: 5,
                        )
                      ],
                    ),
                  )

                ],
              )




            ],
          ),
        ),
      )
    );
  }
}

