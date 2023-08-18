// import 'package:ecommerce_application/controller/category_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../core/constant/colors.dart';
// class ListCategoriesHome extends StatelessWidget {
//  // const ListCategoriesHome({Key? key}):super(key: key);
// final CategoryController controller = Get.put(CategoryController());
//   @override
//   Widget build(BuildContext context) {
//     return
//             SizedBox(
//               height: 100,
//               child: ListView.separated(
//                 separatorBuilder: (context, index) =>const SizedBox(width: 10,),
//                 itemCount: controller.categories.length,
//                 scrollDirection:Axis.horizontal ,
//                 itemBuilder: (context,index){
//                     return Column(
//                       children: [
//                         Container(
//                           decoration: BoxDecoration(color: AppColor.therdColor,
//                           borderRadius: BorderRadius.circular(20)),
//                           padding:const EdgeInsets.symmetric(horizontal: 10),
//                           height: 60,
//                           width: 90,
//                           child:
//                           Text(controller.categories[index].name,style: TextStyle(fontSize: 13,color: Colors.black),),
//                            //Icon(Icons.face_2),
//                         ),

//                       ],
//                     );

//               }, ),
//             );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/colors.dart';
import '../../../controller/category_controller.dart';
import '../../screen/itemsnew.dart';

class ListCategoriesHome extends StatelessWidget {
  List categories = <Category>[].obs;
  final CategoryController controller = Get.put(CategoryController());
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
              onTap: () {
                print(index);
                controller.getTwoCategory(index + 1);
                Get.to(ItemesNew(),arguments: index+1);
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
                        controller.categories[index].name,
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                    //Icon(Icons.face_2),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class Category {
  final String name;

  Category(this.name);

  get id => null;
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../core/constant/colors.dart';
// import '../../../controller/category_controller.dart';

// class ListCategoriesHome extends StatelessWidget {
//   final CategoryController controller = Get.put(CategoryController());

//   @override
//   Widget build(BuildContext context) {
//     return Obx(
//       () => SizedBox(
//         height: 100,
//         child: ListView.separated(
//           separatorBuilder: (context, index) => const SizedBox(width: 10),
//           itemCount: controller.categories.length,
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, index) {
//             final category = controller.categories[index];

//             return GestureDetector(
//               onTap: () {
//                 // تحميل البيانات المرتبطة بالفئة والانتقال إلى واجهة مختلفة
//                 controller.loadCategoryData(category.id);
//                  controller.goToItems();
//               },
//               child: Column(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       color: AppColor.therdColor,
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     padding: const EdgeInsets.symmetric(horizontal: 10),
//                     height: 60,
//                     width: 90,
//                     child: Text(
//                       category.name,
//                       style: TextStyle(fontSize: 13, color: Colors.black),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
