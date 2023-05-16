import 'package:ecommerce_application/core/class/statusrequest.dart';
import 'package:ecommerce_application/core/constant/routesname.dart';
import 'package:ecommerce_application/core/function/handling_data.dart';
import 'package:ecommerce_application/data/datasource/remote/auth/signup_data.dart';
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
  SignUpData signupData = SignUpData(Get.find());
  List data = [];
   StatusRequest? statusRequest;
  @override
  signup() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupData.postData(
          userName.text, password.text, email.text, phoneNumber.text);
      print("=============controller $response");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          data.addAll(response['data']);
          Get.offNamed(AppRoute.verifyCodeSignUp);
        } else {
          Get.defaultDialog(
              title: "Warning",
              middleText: "Phone Number or Email Already Exist");
          statusRequest = StatusRequest.failure;
        }
      }
      update();

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
