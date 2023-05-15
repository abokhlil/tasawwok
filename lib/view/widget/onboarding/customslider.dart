import 'package:ecommerce_application/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/datasource/static/static.dart';

class CustomSlider extends GetView<OnBoardingControllerImp> {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        print(value);
        controller.onPageChanged(value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) => Column(
        children: [
          const SizedBox(height: 60),
          Text(
            onBoardingList[index].title!,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Color.fromARGB(255, 53, 41, 41)),
          ),
          Image.asset(onBoardingList[index].image!),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[index].body!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  height: 2,
                  fontSize: 15,
                  color: Color.fromARGB(255, 48, 45, 45)),
            ),
          ),
        ],
      ),
    );
  }
}
