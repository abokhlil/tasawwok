import 'package:ecommerce_application/core/class/crud.dart';
import 'package:ecommerce_application/core/class/statusrequest.dart';
import 'package:ecommerce_application/core/constant/routesname.dart';
import 'package:ecommerce_application/core/function/handling_data.dart';
import 'package:ecommerce_application/data/datasource/remote/auth/login_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;



abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
  showPassword();
}

class LoginControllerImp extends LoginController {
  
  static var token = '';
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
      var response = await loginData.postData(password.text, email.text);
      print("=============controller $response");
      statusRequest = handlingData(response);
      print('object');
      print(response);
      if (StatusRequest.success == statusRequest) {
        print('fff');
        if (response['message'] == "success login user") {
          String phone = response['data']['Phone'];
          token = response['token'];
          print("-------------------------------");
          print(token);
          Get.offNamed(AppRoute.successSignUP);
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
