import 'package:ecommerce_application/core/class/crud.dart';
import 'package:ecommerce_application/link_api.dart';

class VerifyCodeSignUpData {
  Crud crud;
  VerifyCodeSignUpData(this.crud);

    postData(String email,String verifycode, ) async {
    var response = await crud.postData(AppLink.verifycodeSignupApi, {
      "email": email,
      "verifycode":verifycode ,
    });
    return response.fold((l) => l, (r) => r);
  }
}
