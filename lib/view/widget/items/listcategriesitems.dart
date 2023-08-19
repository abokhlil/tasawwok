import 'package:ecommerce_application/controller/category_controller.dart';
import 'package:ecommerce_application/controller/custom_controller.dart';
import 'package:ecommerce_application/view/screen/itemsnew.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/colors.dart';

class ListCategoriesItems extends StatelessWidget {
  final CategoryController controller = Get.put(CategoryController());
  late final int? i;

  @override
  Widget build(BuildContext context) {
    CustomController con = Get.put(CustomController());
    return GetBuilder<CategoryController>(builder: (controller) {
      return SizedBox(
        height: 100,
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: controller.twoCat.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                print(index);
                con.getFinalProducts( controller.twoCat[index]['id'].toString());
              },
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.therdColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    width: 90,
                    child: Center(
                      child: Text(
                        controller.twoCat[index]['type'],
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                    ),
                    //Icon(Icons.face_2),
                  ),
                ],
              ),
            );
          },
        ),
      );
    });
  }
}
