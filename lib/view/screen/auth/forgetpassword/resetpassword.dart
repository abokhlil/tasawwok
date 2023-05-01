import 'package:ecommerce_application/controller/auth/fotgetpassword/resetpassword_controller.dart';
import 'package:ecommerce_application/core/constant/colors.dart';
import 'package:ecommerce_application/core/function/validinput.dart';
import 'package:ecommerce_application/view/widget/auth/custombuttonAuth.dart';
import 'package:ecommerce_application/view/widget/auth/custommainlabel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widget/auth/custombodylabel.dart';
import '../../../widget/auth/customtextform.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Reset Password',
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formState,
          child: ListView(
            children: [
              CustomMainLabel(
                mainLabel: 'New Password'.tr,
              ),
              CustomBodyLabel(
                bodyLabel: 'Please Enter New Password'.tr,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextForm(
                isNumber: false,

                valid:(val){
                   return validInput(val!, 8, 16, "password");
                } ,
                  controller: controller.password,
                  hintText: 'Enter Your Password'.tr,
                  labelText: 'Password'.tr,
                  iconData: Icons.lock_outlined),
              CustomTextForm(
                isNumber: false,

                valid:(val){
                  return validInput(val!, 8, 17, "password");
                } ,
                  controller: controller.password,
                  hintText: 'Rewrite Password'.tr,
                  labelText: 'Verification '.tr,
                  iconData: Icons.lock_outlined),
              CustomButtonAuth(
                onPressed: () {
                  controller.goToSuccessResetPassword();
                },
                text: 'Save',
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
