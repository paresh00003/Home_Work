import 'package:flutter/material.dart';
import 'package:homework/navigator/NamedNavigation/model/user1.dart';



class PageNumberOne extends StatelessWidget {


  final namecontroller = TextEditingController();
  final agecontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Column(

        children: [
          TextField(

            controller: namecontroller,

            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              hintText: "Enter Name",
            ),
          ),


          TextField(

            controller: agecontroller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Enter Age",
            ),
          ),



          ElevatedButton(onPressed: ()

          {

            String _name = namecontroller.text.trim().toString();

            int _age = agecontroller.text.trim().isEmpty ? 0 : int.parse(agecontroller.text.trim().toString());

            User user = User(name:  _name, age: _age);

            Navigator.pushNamed(context, '/second',arguments: user);

            // Navigator.push(context, MaterialPageRoute(builder: (context) => PageNumberTwo(user1: user,),));


          }, child: Text("Navigate To Second Page")),



        ],
      )
    );
  }
}
