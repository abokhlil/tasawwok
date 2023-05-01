import 'package:ecommerce_application/core/constant/routesname.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUPController extends GetxController {
  signup();
  goToSignIn();
}

class SignUpControllerImp extends SignUPController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController userName;
  late TextEditingController phoneNumber;
  late TextEditingController email;
  late TextEditingController password;

  @override
  signup() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      Get.offNamed(AppRoute.verifyCodeSignUp);
     // Get.delete<SignUpControllerImp>();
    } else {
      print(" not valid");
    }
  }

  @override
  void onInit() {
    userName = TextEditingController();
    phoneNumber = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    userName.dispose();
    phoneNumber.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }
}
