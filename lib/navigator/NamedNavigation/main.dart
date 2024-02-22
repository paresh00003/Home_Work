import 'package:flutter/material.dart';
import 'package:homework/navigator/NamedNavigation/model/user1.dart';
import 'package:homework/navigator/NamedNavigation/pages/page1.dart';
import 'package:homework/navigator/NamedNavigation/pages/page2.dart';
import 'package:homework/navigator/NamedNavigation/pages/page3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',

      initialRoute: '/',

      // routes: {
      //
      //   '/' : (context) => PageNumberOne(),
      //   '/second' : (context) => PageNumberTwo(),
      //   '/third' : (context) => PageNumberThree(),
      // },


      onGenerateRoute: (settings) {

        switch(settings.name)
            {
          case '/':

            return MaterialPageRoute(builder: (context) => PageNumberOne(),);


          case '/':

            var user = settings.arguments as User;

            return MaterialPageRoute(builder: (context) => PageNumberTwo(user),);


          case '/':

            var user = settings.arguments as User;

            return MaterialPageRoute(builder: (context) => PageNumberThree(user));


        }
      },

    );
  }
}




