import 'package:flutter/material.dart';
import 'package:homework/navigator/NamedNavigation/model/user1.dart';


class PageNumberThree extends StatelessWidget {


  // int salary2 ;
  // String name2;
  // int age2;


  // User user2 ;


  User user2 ;


  PageNumberThree(this.user2);

  // PageNumberThree({required this.user2});

  @override
  Widget build(BuildContext context) {

    // User user = ModalRoute.of(context)!.settings.arguments as User;

    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(

          children: [



            Text("${user2.name},${user2.age},${user2.salary}"),

            TextField(

              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "salary",
              ),
            ),






            ElevatedButton(onPressed: (){}, child: Text("Navigate To Third Page")),



          ],
        )
    );
  }
}
