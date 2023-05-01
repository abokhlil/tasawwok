import 'package:ecommerce_application/core/constant/routesname.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController rePassword;

  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }

  @override
  goToSuccessResetPassword() {
    var formData = formState.currentState;
  if (formData!.validate()) {
      Get.offNamed(AppRoute.successResetPassword);
    } else {
       print(" not valid");
    }
  }

  @override
  resetPassword() {}
}
