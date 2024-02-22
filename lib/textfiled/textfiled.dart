import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home()
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: [

              TextField(
                decoration: InputDecoration(

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.pinkAccent,
                      width: 2
                    )
                  ),

                  enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                          color: Colors.yellow,
                          width: 2
                      )
                  ) ,

                  suffixIcon: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: (){

                    },
                  ),
                  suffixText: "Add",

                  prefix: Icon(
                    Icons.add_call,
                  )



                ),
              ),






              SizedBox(height: 20,),

              TextField(
                decoration: InputDecoration(

                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                            color: Colors.yellow,
                            width: 10
                        )
                    )

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

