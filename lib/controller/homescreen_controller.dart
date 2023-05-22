import 'package:ecommerce_application/view/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';


abstract class HomeScreenController extends GetxController{
  changePage(int currentpage);


}
class HomeScreenControllerImp extends HomeScreenController{
  int currentpage =0;
  List<Widget>listPage =[
    const HomePage(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text('setting'),
        ),
      ],
    ),
     Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text('Profail'),
        ),
      ],
    ),
     Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text('Favorait'),
        ),
      ],
    ),
  ];
  List titlebottomappbar =[
   "home",
   "setting",
   "profail",
   "favorite"
  ];
    List iconbottomappbar =[
   Icons.home,
   Icons.settings,
   Icons.person,
   Icons.favorite,
  ];

  @override
  changePage(int i) {
   currentpage =i;
   update();
  }

}