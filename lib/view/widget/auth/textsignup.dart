import 'package:ecommerce_application/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextSignUpOrIn extends StatelessWidget {
  const TextSignUpOrIn(
      {super.key,
      required this.text1,
      required this.text2,
      required this.onTap});
  final String text1;
  final String text2;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1),
        InkWell(
          onTap: onTap,
          child: Text(
            text2,
            style: const TextStyle(
                color: AppColor.blue, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
