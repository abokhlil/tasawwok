import 'package:ecommerce_application/controller/auth/login_controller.dart';
import 'package:ecommerce_application/core/constant/colors.dart';
import 'package:ecommerce_application/core/function/alertexitapp.dart';
import 'package:ecommerce_application/core/function/validinput.dart';
import 'package:ecommerce_application/view/widget/auth/textsignup.dart';
import 'package:ecommerce_application/view/widget/auth/custombuttonauth.dart';
import 'package:ecommerce_application/view/widget/auth/custommainlabel.dart';
import 'package:ecommerce_application/view/widget/auth/customtextform.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/auth/custombodylabel.dart';

import '../../widget/auth/logo.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          '2'.tr,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Form(
            key: controller.formState,
            child: ListView(
              children: [
                const Logo(),
                CustomMainLabel(
                  mainLabel: '3'.tr,
                ),
                CustomBodyLabel(
                  bodyLabel: '4'.tr,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextForm(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 5, 50, "email");
                  },
                  hintText: '6'.tr,
                  labelText: '5'.tr,
                  iconData: Icons.email_outlined,
                  controller: controller.email,
                ),
                GetBuilder<LoginControllerImp>(
                  builder: (controller) => CustomTextForm(
                    obscureText: controller.isShow,
                    onTapIcon: () {
                      controller.showPassword();
                    },
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, 8, 16, "password");
                    },
                    hintText: '8'.tr,
                    labelText: '7'.tr,
                    iconData: Icons.lock_outlined,
                    controller: controller.password,
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.goToForgetPassword();
                  },
                  child: Text(
                    '9'.tr,
                    textAlign: TextAlign.end,
                  ),
                ),
                CustomButtonAuth(
                  text: "10".tr,
                  onPressed: () {
                    controller.login();
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                TextSignUpOrIn(
                  text1: "11".tr,
                  text2: "12".tr,
                  onTap: () {
                    controller.goToSignUp();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
