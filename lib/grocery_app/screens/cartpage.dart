import 'package:flutter/material.dart';
import 'package:homework/grocery_app/widget/cartbottombar.dart';
import 'package:homework/grocery_app/widget/cartitemsample.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool _checkvalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back)),
              ),
              Text(
                "My Cart",
                style: TextStyle(
                  color: Colors.amber.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 5,
                      )
                    ]),
                child: Icon(
                  Icons.notifications,
                  color: Colors.amber.shade900,
                  size: 20,
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.white,
            child: Column(
              children: [
                CheckboxListTile(
                  value: _checkvalue,
                  activeColor: Colors.amber.shade900,
                  onChanged: (value) {
                    setState(() {
                      _checkvalue = value!;
                    });
                  },
                  title: Text(
                    "Select All Items",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                ),
                CartItemSamples(),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5,
                    )
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("Sub-Total :",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,

                      ),),

                      Text("\$100",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,

                      ),),


                    ],
                  ),
                  Divider(height: 10,thickness: 1,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("Delivery Fees :",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,

                      ),),

                      Text("\$20",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,

                      ),),


                    ],
                  ),
                  Divider(height: 10,thickness: 1,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text("Discount :",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,

                      ),),

                      Text("\$-10",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,

                      ),),


                    ],
                  ),


                ],
              ))
        ],


      ),

      bottomNavigationBar: CartBottomBar(),
    );
  }
}
