import 'package:ecommerce_application/core/class/crud.dart';
import 'package:ecommerce_application/link_api.dart';

class LoginData {

  Crud crud;
  LoginData(this.crud);
 
  postData(String password, String email) async {
    var response = await crud.postData(AppLink.loginApi, {
      "Password": password,
      "Email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
