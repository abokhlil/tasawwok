import 'package:flutter/material.dart';


import 'package:get/get_state_manager/get_state_manager.dart';

import '../view/screen/home.dart';
import '../view/screen/settings.dart';


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
    Settings(),
  ];
  List bottomappbar =[
   {"title":"home","icon":Icons.home},
   {"title":"ca","icon":Icons.notifications_active_outlined},
   {"title":"profile","icon":Icons.person_pin_sharp},
   {"title":"setting","icon":Icons.settings},
  ];
   
  @override
  changePage(int i) {
   currentpage =i;
   update();
  }

}