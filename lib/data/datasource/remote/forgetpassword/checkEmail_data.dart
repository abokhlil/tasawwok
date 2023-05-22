import 'package:ecommerce_application/core/class/crud.dart';
import 'package:ecommerce_application/link_api.dart';

class CheckEmailData {
  Crud crud;
  CheckEmailData(this.crud);

  postData( String email) async {
    var response = await crud.postData(AppLink.checkEmailApi, {
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
