import 'package:ecommerce_application/core/constant/imageconstant.dart';
import 'package:ecommerce_application/view/widget/home/customappbar.dart';
import 'package:ecommerce_application/view/widget/items/customlistitem.dart';
import 'package:ecommerce_application/view/widget/items/listcategriesitems.dart';
import 'package:flutter/material.dart';

class ItemesNew extends StatelessWidget {
  const ItemesNew({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        padding:  EdgeInsets.all(15),
        child: ListView(
          children: [
            CustomAppbar(titleappbar: "Find Product",
            onPressedIcon: (){},
            onPressedSearch: (){},),
            SizedBox(height: 10,),
            ListCategoriesItems(),
            CustomListItem(),
           
          
            
           
            ])
           
       
       
        
        ),
      );
    
  }
}