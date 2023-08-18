
import 'package:ecommerce_application/controller/items_controller.dart';
import 'package:ecommerce_application/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ListCategoriesItems extends StatelessWidget {
  final ItemesNewControllerImp controller = Get.put(ItemesNewControllerImp());
  late final int? i;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 100,
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: controller.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
           
              onTap: (){
               // controller.goToItems(controller.categories,index);
               controller.changeCat(index);
              },
              child: Column(

                children: [
                 
                  GetBuilder
                  <ItemesNewControllerImp>(builder: (controller)=>Container(
                    padding: EdgeInsets.only(right: 10,left: 10,bottom: 5),
                    decoration:controller.selectedCat ==index ? BoxDecoration(
                      border: Border(
                        bottom:
                        BorderSide(width: 3,color: AppColor.primaryColor)
                      ),
                    ):null,
                    
                    child: Text(
                      controller.categories[index].name,
                      style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                    //Icon(Icons.face_2),
                  ),),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}