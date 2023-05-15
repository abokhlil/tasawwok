import 'package:ecommerce_application/controller/onboarding_controller.dart';
import 'package:ecommerce_application/core/constant/colors.dart';
import 'package:ecommerce_application/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/onboarding/custombutton.dart';
import '../widget/onboarding/customslider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 6,
              child: CustomSlider(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    DotController(),
                    Spacer(
                      flex: 1,
                    ),
                    CustomButtonOnBoarding(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
