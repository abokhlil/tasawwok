

import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
    final String textbutton;
    final String totalprice;
    final void Function()? onPressed;
  const CartBottomNavBar({super.key, required this.textbutton, this.onPressed, required this.totalprice});


  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    color: Color(0xFF4C53A5),
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                ),
                 Text(
                 totalprice,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            MaterialButton(
              onPressed: onPressed,
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF4C53A5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  textbutton,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}