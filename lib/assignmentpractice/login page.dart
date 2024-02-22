import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          
          children: [
            
            Text("Sign In"),


            TextField(


              keyboardType: TextInputType.text,

              decoration: InputDecoration(
                labelText: "Enter Your E-mail",
                helperText: "E-mail",

                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,

                ),

                prefixIcon: Icon(Icons.email,color: Colors.white,),






              ),
            ),



            TextField(


              keyboardType: TextInputType.number,
              obscureText: true,

              decoration: InputDecoration(
                labelText: "Enter Your Password",
                helperText: "Password",


                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,


                ),

                prefixIcon: Icon(Icons.password,color: Colors.white,),







              ),
            ),
            
            
            
            Text("Forgot Password ?"),
            
            
            
            Row(
              children: [
                
                Icon(Icons.square_outlined,color: Colors.white,),
                
                Text("Remember Me ",style: TextStyle(

                  color: Colors.white,
                ),)

              ],
            )


          ],
        )
      ),
    );
  }
}

