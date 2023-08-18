import 'package:ecommerce_application/controller/auth/login_controller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CustomController extends GetxController {
  var catigoryProducts = [].obs;
  var isLoading = true.obs;

  final String apiUrl = 'http://10.0.2.2:8000/api/catigory-product';

  @override
  void onInit() {
   
    super.onInit();
  }

  List finalProducts = [];
  @override
  Future<http.Response> getFinalProducts(id) async {
    print('1');

    http.Response response = await http.get(
        Uri.parse(
            'http://10.0.2.2:8000/api/get/all/product/using/product/catigory/$id'),
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer ${LoginControllerImp.token}'
        });
    print('2');
    if (response.statusCode == 200) {
      print('3');
      var map = jsonDecode(response.body);
      print('4');
      if (map['message'] == 'success fetch all product from this catigory') {
        print('5');
        finalProducts = map['data'];
        print('6');
      } else {
        Get.defaultDialog(title: 'oops', middleText: 'there is no products ');
      }
      print(finalProducts);
      update();
      return response;
    } else {
      throw new Exception('can not load');
    }
  }

  void fetchCatigoryProducts(int catid) async {
    try {
      isLoading.value = true;
      var token =
          '2|e6042rfqATQtr7XYwYlBRAqiy5vHG9msTFOaNVy0'; // استبدله بالتوكن الخاص بك
      var headers = {'Authorization': 'Bearer ${LoginControllerImp.token}'};
      var response =
          await http.get(Uri.parse('$apiUrl/$catid'), headers: headers);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        catigoryProducts.value = data['data'];
      }
    } finally {
      isLoading.value = false;
    }
  }
  //  void onCategoryItemSelected(int categoryId) {
  //   fetchCatigoryProducts(categoryId);
  // }
}
