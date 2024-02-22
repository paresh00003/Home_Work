import 'package:flutter/material.dart';
import 'package:homework/grocery_app/screens/cartpage.dart';
import 'package:homework/grocery_app/screens/home1.dart';
import 'package:homework/grocery_app/screens/itempage.dart';
import 'package:homework/grocery_app/screens/orderpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF7F5F8),
      ),
      routes: {
        '/' : (context) => Home1(),
        'itempage' : (context) => ItemPage(),
        'cartpage' : (context) => CartPage(),
        'orderpage' : (context) => OrderPage(),
      }
    );
  }
}
