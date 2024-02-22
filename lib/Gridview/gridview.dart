import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home:  Home(),
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
        child: GridView(

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
          mainAxisSpacing: 10,crossAxisSpacing: 10),


          children: [



            Image(
                image: NetworkImage('https://miro.medium.com/v2/resize:fit:1100/0*5sOCsgk1RNyRdDvV')

            ),

            Image(image: NetworkImage('https://miro.medium.com/v2/resize:fit:1100/0*5sOCsgk1RNyRdDvV')

            ),
            Image(image: NetworkImage('https://miro.medium.com/v2/resize:fit:1100/0*5sOCsgk1RNyRdDvV')

            ),

            Image(image: NetworkImage('https://miro.medium.com/v2/resize:fit:1100/0*5sOCsgk1RNyRdDvV')

            ),

            Image(image: NetworkImage('https://miro.medium.com/v2/resize:fit:1100/0*5sOCsgk1RNyRdDvV')

            ),


            Image(image: NetworkImage('https://miro.medium.com/v2/resize:fit:1100/0*5sOCsgk1RNyRdDvV')

            ),


            Image(image: NetworkImage('https://miro.medium.com/v2/resize:fit:1100/0*5sOCsgk1RNyRdDvV')

            ),


            Image(image: NetworkImage('https://miro.medium.com/v2/resize:fit:1100/0*5sOCsgk1RNyRdDvV')

            ),

          ],

        ),
      )
    );
  }
}

