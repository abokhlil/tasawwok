import 'package:ecommerce_application/controller/custom_controller.dart';
import 'package:ecommerce_application/core/constant/imageconstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomController>(
      init: CustomController(),
      builder: (CustomController controller) {
        return GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.finalProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (BuildContext context, index) {
            return InkWell(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImageAsset.onBoardingImageTwo),
                      Row(
                        children: [
                          Text(
                            controller.finalProducts[index]['Name'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Spacer(),
                          Text(
                            '${controller.finalProducts[index]['Price']}£',
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
