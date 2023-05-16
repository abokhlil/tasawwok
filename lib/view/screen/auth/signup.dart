import 'package:ecommerce_application/controller/auth/signup_controller.dart';
import 'package:ecommerce_application/core/class/statusrequest.dart';
import 'package:ecommerce_application/core/constant/colors.dart';
import 'package:ecommerce_application/core/function/alertexitapp.dart';
import 'package:ecommerce_application/core/function/validinput.dart';
import 'package:ecommerce_application/view/widget/auth/textsignup.dart';
import 'package:ecommerce_application/view/widget/auth/custombuttonAuth.dart';
import 'package:ecommerce_application/view/widget/auth/custommainlabel.dart';
import 'package:ecommerce_application/view/widget/auth/customtextform.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/auth/custombodylabel.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          '12'.tr,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: GetBuilder<SignUpControllerImp>(
        builder: (controller) => controller.statusRequest ==
                StatusRequest.loading
            ? const Center(child: Text('Loading...'))
            : Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: WillPopScope(
                  onWillPop: alertExitApp,
                  child: Form(
                    key: controller.formState,
                    child: ListView(
                      children: [
                        CustomMainLabel(
                          mainLabel: '3'.tr,
                        ),
                        CustomBodyLabel(
                          bodyLabel: '13'.tr,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomTextForm(
                          isNumber: false,
                          controller: controller.userName,
                          hintText: '14'.tr,
                          labelText: '15'.tr,
                          iconData: Icons.person_outlined,
                          valid: (val) {
                            return validInput(val!, 5, 50, "username");
                          },
                        ),
                        CustomTextForm(
                            isNumber: true,
                            valid: (val) {
                              return validInput(val!, 5, 50, "phone");
                            },
                            controller: controller.phoneNumber,
                            hintText: '16'.tr,
                            labelText: '17'.tr,
                            iconData: Icons.phone_android_outlined),
                        CustomTextForm(
                            isNumber: false,
                            valid: (val) {
                              return validInput(val!, 5, 50, "email");
                            },
                            controller: controller.email,
                            hintText: '6'.tr,
                            labelText: '5'.tr,
                            iconData: Icons.email_outlined),
                        CustomTextForm(
                          isNumber: false,
                          controller: controller.password,
                          hintText: '8'.tr,
                          labelText: '7'.tr,
                          iconData: Icons.lock_outlined,
                          valid: (val) {
                            return validInput(val!, 8, 16, "password");
                          },
                        ),
                        CustomButtonAuth(
                          onPressed: () {
                            controller.signup();
                          },
                          text: '12'.tr,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextSignUpOrIn(
                          text1: "18".tr,
                          text2: "2".tr,
                          onTap: () {
                            controller.goToSignIn();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
