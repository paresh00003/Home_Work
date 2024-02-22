import 'package:flutter/material.dart';
import 'package:homework/navigator/NamedNavigation/model/user1.dart';


class PageNumberTwo extends StatelessWidget {

  // String name1;
  // int age1 ;

  final salarycontroller = TextEditingController();

  // User user1 ;

  User user1;


  PageNumberTwo(this.user1);

  // PageNumberTwo({required this.user1});

  @override
  Widget build(BuildContext context) {

    // User user = ModalRoute.of(context)!.settings.arguments as User;

    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(

          children: [

            Text("${user1.name},${user1.age}"),

            TextField(

              controller: salarycontroller,

              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "salary",
              ),
            ),






            ElevatedButton(onPressed: ()
            {
              int _salary = salarycontroller.text.trim().isEmpty ? 0 : int.parse(salarycontroller.text.trim().toString());

              user1.salary = _salary;

              Navigator.pushNamed(context, '/third',arguments: user1);

              // Navigator.push(context, MaterialPageRoute(builder: (context) => PageNumberThree(user2: user1,),));

            }, child: Text("Navigate To Third Page")),



          ],
        )
    );
  }
}
