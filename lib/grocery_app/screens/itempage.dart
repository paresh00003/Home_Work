import 'package:flutter/material.dart';
import 'package:homework/grocery_app/widget/itembottombar.dart';



class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.amberAccent.shade100,
            height: 250,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        // margin: EdgeInsets.all(8),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.amber,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/images/2.png",
                  height: 150,
                  width: 150,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 5,
              )
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Item Name",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "\$50",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber.shade500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\400 Gram",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 5,
              )
            ]),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Product Details",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Food is treated in a number of articles. For a description of the processes of absorption and utilization of food, see nutrition; nutrition, human; digestion; and digestive system, human.",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ]),
          ),

          SizedBox(height: 10,),
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Padding(
                padding: const EdgeInsets.only(left: 20),

                child: Text("Only For You.",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
              ),

              SizedBox(height: 5,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(

                  children: [

                    for(int i=1; i<9 ; i++)
                    Container(


                      padding: EdgeInsets.all(8),
                      height: 70,
                      width: 70,
                      margin: EdgeInsets.only(top: 8,left: 20,bottom: 8),
                      decoration: BoxDecoration(
                        color: Colors.amberAccent.shade100,
                        borderRadius: BorderRadius.circular(8),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 5,
                          )
                        ]
                      ),
                      child: Image.asset("assets/images/$i.png",fit: BoxFit.contain,),
                    )

                  ],
                ),
              )
            ],


          )
        ],
      ),

      bottomNavigationBar: ItemBottomBar(),
    );
  }
}
