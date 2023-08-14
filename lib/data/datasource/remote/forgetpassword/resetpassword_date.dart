import 'package:ecommerce_application/core/class/crud.dart';
import 'package:ecommerce_application/link_api.dart';

class ResetPasswordData {
  Crud crud;
  ResetPasswordData(this.crud);

  postData(String password, String email) async {
    var response = await crud.postData(AppLink.resetpasswordApi, {
      "Password": password,
      "Email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
