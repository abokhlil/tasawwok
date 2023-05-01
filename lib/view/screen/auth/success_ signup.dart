import 'package:ecommerce_application/controller/auth/successsignup_controller.dart';
import 'package:ecommerce_application/core/constant/colors.dart';
import 'package:ecommerce_application/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/auth/custombodylabel.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});
  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Success',
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 120),
              child: Icon(
                Icons.check_circle_outline,
                size: 200,
                color: AppColor.purple,
              ),
            ),
            const CustomBodyLabel(
              bodyLabel: 'Great, You Are Welcome in These Application',
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButtonAuth(
              text: "Next",
              onPressed: () {
                controller.goToPageLogin();
              },
            ),
          ],
        ),
      ),
    );
  }
}
