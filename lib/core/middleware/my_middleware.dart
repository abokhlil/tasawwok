import 'package:ecommerce_application/core/constant/routesname.dart';
import 'package:ecommerce_application/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? priority = 1;
  MyServices myServices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPrefernces.getString("onboarding") == "1") {
      return const RouteSettings(name: AppRoute.login);
    }
  }
}
