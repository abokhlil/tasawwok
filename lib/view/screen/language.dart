import 'package:ecommerce_application/core/constant/colors.dart';
import 'package:ecommerce_application/core/constant/routesname.dart';
import 'package:ecommerce_application/core/localization/changelocal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/language/custombuttonlang.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '1'.tr,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                  color: Color.fromARGB(255, 53, 41, 41)),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButtonLang(
              textButton: 'Arabic',
              onPressed: () {
                controller.changeLang('ar');
                Get.offNamed(AppRoute.onboarding);
              },
            ),
            CustomButtonLang(
              textButton: 'English',
              onPressed: () {
                controller.changeLang('en');
                Get.offNamed(AppRoute.onboarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
