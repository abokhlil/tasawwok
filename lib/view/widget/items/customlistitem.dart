

// import 'package:ecommerce_application/core/constant/imageconstant.dart';
// import 'package:flutter/material.dart';

// class CustomListItem extends StatelessWidget {
//   const CustomListItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  GridView.builder(
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               itemCount: 5,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
//               childAspectRatio: 0.7), itemBuilder: (BuildContext context ,index){
//                 return InkWell(
//                   child: Card(
//                     child: Padding(padding: const EdgeInsets.all(10),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(AppImageAsset.onBoardingImageTwo),
//                         Text("data"),
//                       ],
//                     ),
//                     ),
//                   ),
//                 );
//               });
//   }
// }

// import 'package:ecommerce_application/controller/custom_controller.dart';
// import 'package:ecommerce_application/core/constant/imageconstant.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';


// class CustomListItem extends StatelessWidget {
//   const CustomListItem({Key? key});

//   @override
//   Widget build(BuildContext context) {
//      return GetBuilder<ApiController>(
//   init: ApiController(),
//   builder: (ApiController controller) { // تعيين النوع الصحيح للمتغير controller
//     return GridView.builder(
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       itemCount: controller.catigoryProducts.length,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         childAspectRatio: 0.7,
//       ),
//       itemBuilder: (BuildContext context, index) {
//         var product = controller.catigoryProducts[index];
//         return InkWell(
//           child: Card(
//             child: Padding(
//               padding: const EdgeInsets.all(10),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(AppImageAsset.onBoardingImageTwo),
//                   Text(product['type']),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   },
// );
//   }
// }

import 'package:ecommerce_application/controller/custom_controller.dart';
import 'package:ecommerce_application/core/constant/imageconstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListItem extends StatelessWidget {
  final ApiController controller =  Get.put(ApiController());

  //const CustomListItem({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ApiController>(
      init: controller,
      builder: (controller) {
        return GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.catigoryProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (BuildContext context, index) {
            var product = controller.catigoryProducts[index];
            return InkWell(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImageAsset.onBoardingImageTwo),
                      Text(product['type'] ,style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20
                      ),),
                    ],
                  ),
                ),
              ),
              onTap: () {
                // تنفيذ الإجراء عند النقر على العنصر
              },
            );
          },
        );
      },
    );
  }
}