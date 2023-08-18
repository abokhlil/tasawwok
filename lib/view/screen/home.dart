import 'package:ecommerce_application/controller/home_controller.dart';
import 'package:ecommerce_application/view/widget/home/listitemSearch.dart';
import 'package:ecommerce_application/view/widget/home/listitemhomeRandom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/home/customappbar.dart';
import '../widget/home/customcardhome.dart';
import '../widget/home/customtitelhome.dart';
import '../widget/home/listcategorieshome.dart';
import '../widget/home/listitemhomeTopRated.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return Scaffold(
      body: GetBuilder<HomeControllerImp>(builder: (controller) => 
      
       Container(
        padding: EdgeInsets.symmetric(horizontal: 15),

        child: ListView(
          children: [
             CustomAppbar(
              
             searchcontroller: HomeControllerImp.searchcontent,
             
              onChanged:(val){
                controller.checkSearch(val);
              } ,
              
              titleappbar: "Find Product",
              onPressedIcon: (){
               controller.makeOrder();
                Get.defaultDialog(title: "your order was sent");
              },
              onPressedSearch: (){
                controller.onSearch();
              },
              ),



         !controller.isSearching?   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
               const CustomCardHome(title: "A summer surprise", body: "Cashback 20%"),
             
          
            const SizedBox(height: 10,),
            const CustomTitelHome(titel: "Categories"),
            const SizedBox(height: 10,),
            ListCategoriesHome(),
            
            const SizedBox(height: 10,),
           const CustomTitelHome(titel: "Top Rated Products"),
           const SizedBox(height: 10,),
            listitemhomeTopRated(),

            const SizedBox(height: 10,),
           const CustomTitelHome(titel: "Random Products"),
           const SizedBox(height: 10,),
            listitemhomeRandom(),



            ],): listitemSearch(),
            
            // Container(
            //   child: Text("Looking for Data"),
            // )


            
          //    const CustomCardHome(title: "A summer surprise", body: "Cashback 20%"),
             
          
          //   const SizedBox(height: 10,),
          //   const CustomTitelHome(titel: "Categories"),
          //   const SizedBox(height: 10,),
          //   ListCategoriesHome(),
            
          //   const SizedBox(height: 10,),
          //  const CustomTitelHome(titel: "Top Rated Products"),
          //  const SizedBox(height: 10,),
          //   listitemhomeTopRated(),

          //   const SizedBox(height: 10,),
          //  const CustomTitelHome(titel: "Random Products"),
          //  const SizedBox(height: 10,),
          //   listitemhomeRandom(),



            

          ],
        ),
      ),
    ),);

  }
}