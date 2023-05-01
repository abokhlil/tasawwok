import 'package:ecommerce_application/core/constant/routesname.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String verifyCode;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  checkCode() {}
}
