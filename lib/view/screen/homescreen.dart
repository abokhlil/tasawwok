import 'package:ecommerce_application/core/constant/routesname.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/homescreen_controller.dart';
import '../../core/constant/colors.dart';
import '../widget/home/custombottonappbarhome.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller)=>Scaffold(
      
      floatingActionButton: FloatingActionButton
      (backgroundColor: AppColor.primaryColor,
        onPressed: (){
          Get.toNamed(AppRoute.cart);
        },
       child:const Icon(Icons.shopping_basket_outlined),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:const CustomButtonAppbarHome(), 
       body:controller.listPage.elementAt(controller.currentpage),));
      
  }
}