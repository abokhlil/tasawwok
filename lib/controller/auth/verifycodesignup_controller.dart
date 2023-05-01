import 'package:ecommerce_application/core/constant/routesname.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignup();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  late String verifyCode;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  goToSuccessSignup() {
    Get.offNamed(AppRoute.successSignUP);
  }

  @override
  checkCode() {}
}
