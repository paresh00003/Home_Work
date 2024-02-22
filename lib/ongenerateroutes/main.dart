import 'package:flutter/material.dart';
import 'package:homework/ongenerateroutes/model/user.dart';
import 'package:homework/ongenerateroutes/screen/screen1.dart';
import 'package:homework/ongenerateroutes/screen/screen2.dart';
import 'package:homework/ongenerateroutes/screen/screen3.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation and Routing',
      initialRoute: '/',
      /* routes: {
          '/' : (context) => FirstPage(),
          '/second': (context) => SecondPage(),
          '/third' : (context) => ThirdPage()
        },*/
      onGenerateRoute: (settings) {
        switch(settings.name){
          case '/' :
            return MaterialPageRoute(builder: (context) => FirstRoute(),);
          case '/second' :

            var user = settings.arguments as User;

            return MaterialPageRoute(builder: (context) => SecondRoute(user),);
          case '/third' :

            var user = settings.arguments as User;

            return MaterialPageRoute(builder: (context) => ThirdRoute(user),);

        }
      },
    );
  }
}


