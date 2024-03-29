import 'package:ecommerce_application/bindings/init_bindings.dart';
import 'package:ecommerce_application/core/localization/changelocal.dart';
import 'package:ecommerce_application/core/services/services.dart';
import 'package:ecommerce_application/view/screen/productDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/localization/translation.dart';
import 'routes.dart';
import 'view/screen/auth/forgetpassword/resetpassword.dart';
import 'view/screen/auth/login.dart';
import 'view/screen/cart.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      locale: controller.language,
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: controller.appTheme,
      initialBinding: InitialBindings(),
      //  home: const ResetPassword(),
      home:  Login(),
      // home: const Cart(),
      // home: const Test(),
      //  routes: routes,
      getPages: routes,
    );
  }
}
