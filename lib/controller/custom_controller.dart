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
    fetchCatigoryProducts(1); // تحميل البيانات الأولية عند تهيئة الـ Controller
  }

  void fetchCatigoryProducts(int catid) async {
    try {
      isLoading.value = true;
      var token =
          '2|e6042rfqATQtr7XYwYlBRAqiy5vHG9msTFOaNVy0'; // استبدله بالتوكن الخاص بك
      var headers = {'Authorization': 'Bearer ${LoginControllerImp.token}'};
      var response = await http.get(Uri.parse('$apiUrl/$catid'), headers: headers);
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

