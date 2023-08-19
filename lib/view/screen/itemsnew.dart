import 'package:ecommerce_application/controller/items_controller.dart';
import 'package:ecommerce_application/view/widget/home/customappbar.dart';
import 'package:ecommerce_application/view/widget/items/customlistitem.dart';
import 'package:ecommerce_application/view/widget/items/listcategriesitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/category_controller.dart';

class ItemesNew extends StatelessWidget {
  const ItemesNew({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryController controller = Get.put(CategoryController());
    

    return Scaffold(
      backgroundColor: Colors.grey[150],
      body: Container(
          padding: EdgeInsets.all(15),
          child: ListView(children: [
            CustomAppbar(
              searchcontroller: controller.l,
              titleappbar: "Find Product",
              onPressedIcon: () {},
              onPressedSearch: () {},
            ),
            SizedBox(
              height: 10,
            ),
            ListCategoriesItems(),
            CustomListItem(),
          ])),
    );
  }
}
