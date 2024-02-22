import 'package:flutter/material.dart';

class ItemBottomBar extends StatefulWidget {
  const ItemBottomBar({super.key});

  @override
  State<ItemBottomBar> createState() => _ItemBottomBarState();
}

class _ItemBottomBarState extends State<ItemBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 25),
      decoration: BoxDecoration(
        color: Colors.white,
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: GestureDetector(
              onTap: (){

              },
              child: Container(
                height: 60,
                width: 70,
                alignment: Alignment.center,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                  color: Colors.amber.shade300


                ),
                child: Icon(Icons.shopping_cart,color: Colors.white,),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: GestureDetector(
              onTap: (){
                  Navigator.pushNamed(context, 'cartpage');
              },
              child: Container(
                height: 60,
                width: 170,
                alignment: Alignment.center,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),

                    color: Colors.amber.shade300


                ),
                child: Text("Buy Now",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),)
              ),
            ),
          )

        ],
      ),

    );
  }
}

