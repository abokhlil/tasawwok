import 'package:ecommerce_application/controller/auth/login_controller.dart';
import 'package:ecommerce_application/core/class/crud.dart';
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
  late TextEditingController username;
  late TextEditingController address;
  late TextEditingController phone;
  late TextEditingController email;
  late TextEditingController password;
  SignUpData signupData = SignUpData(Get.find());
  List data = [];
  StatusRequest statusRequest = StatusRequest.none;
  @override
  signup() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupData.postData(
          username.text, password.text, email.text, phone.text, address.text);
      print("=============controller $response");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['message'] == "Success SignUp") {
          print('--------------------');
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.verifyCodeSignUp, arguments: {
            "email": email.text,
          });
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
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    address = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    phone.dispose();
    email.dispose();
    password.dispose();
    address.dispose();
    super.dispose();
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }
}
