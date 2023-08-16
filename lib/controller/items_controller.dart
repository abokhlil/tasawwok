import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;


class Category {
  final String name;

  Category(this.name);

  get id => null;
}

abstract class ItemesNewController extends GetxController{
  intialData();
  changeCat(int val);
  getItems();

}
class ItemesNewControllerImp extends ItemesNewController{
  List categories = <Category>[].obs;

   int? selectedCat ;
   var catigoryProducts = [].obs;
  var isLoading = true.obs;
  final String apiUrl = 'http://10.0.2.2:8000/api/catigory-product';
   
     @override
     intialData() {
     categories =Get.arguments['categories'];
     selectedCat=Get.arguments['selectedCat'];
    
     fetchCatigoryProducts(1);
     }

     @override
  void onInit() {
    intialData();
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
    void fetchCatigoryProducts(int catid,) async {
    try {
      isLoading.value = true;
      var token = '2|e6042rfqATQtr7XYwYlBRAqiy5vHG9msTFOaNVy0'; // استبدله بالتوكن الخاص بك
      var headers = {'Authorization': 'Bearer $token'};
      var response = await http.get(Uri.parse('$apiUrl/$catid'), headers: headers);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        catigoryProducts.value = data['data'];
      }
    } finally {
      isLoading.value = false;
    }
  }


}