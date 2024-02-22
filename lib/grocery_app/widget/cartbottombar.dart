import 'package:flutter/material.dart';

class CartBottomBar extends StatefulWidget {
  const CartBottomBar({super.key});

  @override
  State<CartBottomBar> createState() => _CartBottomBarState();
}

class _CartBottomBarState extends State<CartBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 120,
      padding: EdgeInsets.symmetric(horizontal: 20),

      decoration: BoxDecoration(

        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
          ),
          
        ]

      ),
      child: Column(
        
        children: [
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(

              children: [

                Icon(Icons.discount,color: Colors.orange,),

                SizedBox(width: 5,),

                Text("Use Promo Coupons",style: TextStyle(

                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),),
              ],
            ),
          ),

          Divider(height: 5,thickness: 1,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("Total",style: TextStyle(

                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),),


                  Text("\$120",style: TextStyle(

                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.amber.shade900
                  ),),



                ],
              ),

              GestureDetector(
                onTap: (){

                  Navigator.pushNamed(context, 'orderpage');
                },
                child: Container(

                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    alignment: Alignment.center,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),

                        color: Colors.amber.shade300


                    ),
                    child: Text("Check Out",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),)
                ),
              ),

            ],
          ),

        ],
      ),

    );
  }
}
