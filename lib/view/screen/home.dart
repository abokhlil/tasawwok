import 'package:flutter/material.dart';

import '../widget/home/customappbar.dart';
import '../widget/home/customcardhome.dart';
import '../widget/home/customtitelhome.dart';
import '../widget/home/listcategorieshome.dart';
import '../widget/home/listitemhome.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),

        child: ListView(
          children: [
             CustomAppbar(titleappbar: "Find Product",onPressedIcon: (){},onPressedSearch: (){},),
             const CustomCardHome(title: "A summer surprise", body: "Cashback 20%"),
          
            const SizedBox(height: 10,),
            const CustomTitelHome(titel: "Categories"),
            const SizedBox(height: 10,),
            const ListCategoriesHome(),
            
            const SizedBox(height: 10,),
           const CustomTitelHome(titel: "Product for you"),
           const SizedBox(height: 10,),
           const ListItemHome(),
            const SizedBox(height: 10,),

           const CustomTitelHome(titel: "Offer"),
           const SizedBox(height: 10,),
           const ListItemHome(),
            

          ],
        ),
      ),
    );

  }
}