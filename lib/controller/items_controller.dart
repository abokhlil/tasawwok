import 'dart:convert';

import 'package:ecommerce_application/controller/auth/login_controller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;


class Category {
  final String name;

  Category(this.name);

  get id => null;
}

abstract class ItemesNewController extends GetxController{
 
  changeCat(int val);
  getItems();

}
class ItemesNewControllerImp extends ItemesNewController{
  List categories = <Category>[].obs;

   int? selectedCat ;
   var catigoryProducts = [].obs;
  var isLoading = true.obs;
  final String apiUrl = 'http://10.0.2.2:8000/api/catigory-product';

  get data => null;
   

     @override
  void onInit() {
   
    super.onInit();
  }
  
  @override
  changeCat(val) {
   selectedCat =val;
   update();
  }
  
  @override
  getItems() {
   
  }
    void fetchCatigoryProducts(int id,) async {
    try {
      isLoading.value = true;
      var headers = {'Authorization': 'Bearer ${LoginControllerImp.token}'};
      var response = await http.get(Uri.parse('$apiUrl/$id'), headers: headers);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        catigoryProducts.value = data['data'];
      }
    } finally {
      isLoading.value = false;
    }
  }

 


}