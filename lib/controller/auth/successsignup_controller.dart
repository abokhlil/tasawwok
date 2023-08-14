import 'package:ecommerce_application/controller/auth/login_controller.dart';
import 'package:ecommerce_application/core/constant/routesname.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {
  goToPageLogin();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  goToPageLogin() {
    print(LoginControllerImp.token);
    Get.offAllNamed(AppRoute.homescreen);
  }
}
