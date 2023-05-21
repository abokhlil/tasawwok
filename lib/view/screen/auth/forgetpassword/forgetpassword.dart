import 'package:ecommerce_application/controller/auth/fotgetpassword/forgetpassword_controller.dart';
import 'package:ecommerce_application/core/class/handling_data_view.dart';
import 'package:ecommerce_application/core/class/statusrequest.dart';
import 'package:ecommerce_application/core/constant/colors.dart';
import 'package:ecommerce_application/core/function/validinput.dart';
import 'package:ecommerce_application/view/widget/auth/custombuttonAuth.dart';
import 'package:ecommerce_application/view/widget/auth/custommainlabel.dart';
import 'package:ecommerce_application/view/widget/auth/customtextform.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widget/auth/custombodylabel.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Forget Password',
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: GetBuilder<ForgetPasswordControllerImp>(builder: (controller)=>
      HandlingDataRequest(statusRequest: controller.statusRequest, widget:
      Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formState,
          child: ListView(
            children: [
              CustomMainLabel(
                mainLabel: 'Check Email'.tr,
              ),
            const  CustomBodyLabel(
                bodyLabel:
                    'Please Enter Your Email Address To Receive a Verification Number',
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextForm(
                isNumber: false,
                valid:(val){
                   return validInput(val!, 5, 50, "email");
                } ,
                  controller: controller.email,
                  hintText: '6'.tr,
                  labelText: '5'.tr,
                  iconData: Icons.email_outlined),
              CustomButtonAuth(
                onPressed: () {
                  controller.checkEmail();
                },
                text: 'Check',
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      ),),
    );
  }
}
