import 'package:ecommerce_application/core/class/crud.dart';
import 'package:ecommerce_application/link_api.dart';

class SignUpData {
 Crud crud;
  SignUpData(this.crud);

    postData(String username,String password,String email,String phone,String address ) async {
    var response = await crud.postData(AppLink.signupApi, {
      "Name": username,
      "Password":password ,
      "Email": email,
      "Phone":phone ,
      "Address":address ,
    });
    return response.fold((l) => l, (r) => r);
  }
}
