import 'package:ecommerce_application/core/constant/routesname.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  goToVerifyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  goToVerifyCode() {
    var formData = formState.currentState;
  if (formData!.validate()) {
      Get.offNamed(AppRoute.verifyCode);
    } else {
       print(" not valid");
    }
  }

  @override
  checkEmail() {}
}
