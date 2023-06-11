import 'package:flutter/material.dart';


class AppBarCart extends StatelessWidget {
  final String title;
  const AppBarCart({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
       
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,size: 30,color: Color(0xFF4C53A5),)),
          Padding(padding: EdgeInsets.only(left: 20),child: Text(
            "Cart",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color:  Color(0xFF4C53A5),
            ),
          ),),
          Spacer(),
          
          
        ],
      ),




    );
  }
}