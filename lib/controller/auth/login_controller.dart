import 'package:ecommerce_application/core/constant/routesname.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
  showPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isShow = true;

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  login() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("valid");
    } else {
      print(" not valid");
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  @override
  showPassword() {
    isShow = isShow == true ? false : true;
    update();
  }
}
