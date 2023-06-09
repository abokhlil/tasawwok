import 'package:ecommerce_application/core/class/statusrequest.dart';
import 'package:ecommerce_application/core/constant/routesname.dart';
import 'package:ecommerce_application/core/function/handling_data.dart';
import 'package:ecommerce_application/data/datasource/remote/auth/login_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_messaging/firebase_messaging.dart';

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
  LoginData loginData = LoginData(Get.find());
  bool isShow = true;
  StatusRequest statusRequest = StatusRequest.none;
  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  login() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(email.text, password.text);
      print("=============controller $response");
      statusRequest = handlingData(response);
      print('object');
      print(response);
      if (StatusRequest.success == statusRequest) {
        print('fff');
        if (response['status'] == "success") {
          print('status = success');
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.successSignUP);
          Get.defaultDialog(
              title: "Warning", middleText: "Email or password is not correct");
          statusRequest = StatusRequest.failure;
        }
        print('no success');
      }
      update();
    } else {
      print(" not valid");
    }
  }

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      print(value);
    });
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
