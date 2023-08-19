import 'package:ecommerce_application/view/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../view/screen/favorite.dart';
import '../view/screen/home.dart';
import '../view/screen/itemes.dart';
import '../view/screen/settings.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;
  List<Widget> listPage = [
    const HomePage(),
    const Favorite(),
    // Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Center(
    //       child: Column(
    //         children: [
              
    //           Text('Profail'),
    //         ],
    //       ),
    //     ),
    //   ],
    // ),
    const Profile(),
    Settings(),
  ];
  List bottomappbar = [
    {"title": "Home", "icon": Icons.home},
    {"title": "Favorite", "icon": Icons.favorite_border_outlined},
    {"title": "Profile", "icon": Icons.person_pin_sharp},
    {"title": "Setting", "icon": Icons.settings},
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}
