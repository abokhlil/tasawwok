import 'package:flutter/material.dart';
import '../widget/cart/appbarcart.dart';
import '../widget/cart/cartbottomnavbar.dart';
import '../widget/cart/cartitemsamples.dart';


class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children:[
         AppBarCart (title: "Cart",),
         Container(
          height: 700,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            )
          ),
          child: Column(
            children: [
              CartItemSamples(),
              SizedBox(height: 1,),
              CartItemSamples(),
              SizedBox(height: 1,),
                CartItemSamples(),
                
            ],
          ),
         ),
      
      ]),
      bottomNavigationBar:CartBottomNavBar(textbutton: "Check Out",onPressed: (){}, totalprice: '1200',)
    );
  }
}