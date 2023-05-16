import 'dart:io';

import 'package:ecommerce_application/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "Close App",
      middleText: "Do you Want close Application ?",
      actions: [
        ElevatedButton(
          onPressed: () {
            exit(0);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColor.blue),
            overlayColor: MaterialStateProperty.all(Colors.red),
          ),
          child: const Text("Confirm"),
        ),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColor.blue),
              overlayColor: MaterialStateProperty.all(Colors.green),
            ),
            child: const Text("Cancel")),
      ]);
  return Future.value(true);
}
