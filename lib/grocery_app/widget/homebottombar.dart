import 'package:flutter/material.dart';

class HomeBottomBar extends StatefulWidget {
  const HomeBottomBar({super.key});

  @override
  State<HomeBottomBar> createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(

           children: [

             Icon(
               Icons.home,
               color: Colors.yellow.shade700,
               size: 30,
             ),

             Text(
               "Home",
               style: TextStyle(
                 fontSize: 16,
                 fontWeight: FontWeight.bold,
                 color: Colors.yellow.shade700,
               ),
             ),
           ],
          ),
          Column(

            children: [

              Icon(
                Icons.search,
                color: Colors.yellow.shade700,
                size: 30,
              ),

              Text(
                "Explore",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow.shade700,
                ),
              ),
            ],
          ),
          InkWell(
            onTap: (){

              Navigator.pushNamed(context, 'cartpage');
            },
            child: Column(

              children: [

                Icon(
                  Icons.shopping_cart,
                  color: Colors.yellow.shade700,
                  size: 30,
                ),

                Text(
                  "My Cart",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow.shade700,
                  ),
                ),
              ],
            ),
          ),
          Column(

            children: [

              Icon(
                Icons.person,
                color: Colors.yellow.shade700,
                size: 30,
              ),

              Text(
                "Account",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow.shade700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
