

import 'package:flutter/material.dart';
import 'package:homework/practical/curd_with_data/model/student.dart';

class CurdStatic extends StatefulWidget {
  const CurdStatic({super.key});



  @override
  State<CurdStatic> createState() => _CurdStaticState();
}

class _CurdStaticState extends State<CurdStatic> {

  List<String> StudentList = [];



  void addstudent(std, BuildContext context) {


    setState(() {

      StudentList.add(std);
    });
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: (){

          Showbottomdailog(context);

        },
        child: Icon(Icons.add),

      ),



      appBar: AppBar(
        title: Text('Material App Bar'),
      ),

      body: ListView.builder(
        itemCount: StudentList.length,
        itemBuilder: (context, index) {

          Student student = StudentList[index] as Student;

        return  ListTile(

          leading: Icon(Icons.account_circle_rounded),
          title: Text('${student.name!}'),
          subtitle: Text("email : ${student.email}"),


        );
      },)
    );
  }

  void Showbottomdailog(BuildContext context) {

    final namecontroller = TextEditingController();
    final emailcontroller = TextEditingController();
    final coursecontroller = TextEditingController();

    showModalBottomSheet(context: context,

      isScrollControlled: true,
      builder: (context) {

      return    SingleChildScrollView(
        child: Container(
          color: Colors.white,

          padding: EdgeInsets.only(left: 25,right: 25,top: 25,

              bottom: MediaQuery.of(context).viewInsets.bottom == 0
          ? 25 : MediaQuery.of(context).viewInsets.bottom+ 25),

          child: Column(

            mainAxisSize: MainAxisSize.min,

            children: [

              TextField(
                controller: namecontroller,
                decoration: InputDecoration(

                  border: OutlineInputBorder(),
                  labelText: 'Enter Name'
                ),
              ),


              SizedBox(height: 15,),

              TextField(
                controller: emailcontroller,
                decoration: InputDecoration(

                    border: OutlineInputBorder(),
                    labelText: 'Enter Email'
                ),
              ),


              SizedBox(height: 15,),

              TextField(
                controller: coursecontroller,
                decoration: InputDecoration(

                    border: OutlineInputBorder(),
                    labelText: 'Enter Corse'
                ),
              ),

              SizedBox(height: 15,),

              Container(

                width: double.infinity,
                child: ElevatedButton(onPressed: (){

                  String _name = namecontroller.text.trim();
                  String _email = emailcontroller.text.trim();
                  String _course = coursecontroller.text.trim();


               Student std = Student(name: _name,
                   email: _email,
                   course: _course);


               addstudent(std,context);


                }, child: Text('ADD STUDENT')),
              ),


            ],
          ),
        ),
      );
    },);
  }




}
