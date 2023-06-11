

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/colors.dart';
import '../../../core/constant/imageconstant.dart';

class TopProductPageDetails extends StatelessWidget {
  const TopProductPageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
          clipBehavior: Clip.none,
          children: [Container(
            height: 180,
            decoration:const  BoxDecoration(color:AppColor.primaryColor,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),),
            
                       Positioned(
              top: 30.0,
              right: Get.width/8,
              left: Get.width/8,
              child: Image.asset(AppImageAsset.tshirt,height: 250,fit: BoxFit.fill,)
              ),
              ]);
  }
}