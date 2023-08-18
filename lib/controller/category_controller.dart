

import 'package:ecommerce_application/core/constant/routesname.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'auth/login_controller.dart';

class Category {
  final String name;

  Category(this.name);

  get id => null;
}

class CategoryController extends GetxController {
  RxList<Category> categories = <Category>[].obs;
   int catid =0;
   int? selectedCat ;

  @override
  void onInit() {
    super.onInit();
    fetchCategories();
  }

  Future<void> fetchCategories() async {
    final url = 'http://10.0.2.2:8000/api/bas-catigories';

    try {
      final response = await http.get(Uri.parse(url), headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${LoginControllerImp.token}',
      });

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        if (data['message'] == 'success fetch catigories') {
          final categoriesData = data['data'] as List<dynamic>;

          categories.assignAll(categoriesData.map((category) => Category(category)).toList());
        }
      }
    } catch (error) {
      print('حدث خطأ: $error');
    }
  }

  void loadCategoryData(id) {}

  void goToItems(categories, selectedCat ,int catid ) {
    Get.toNamed(AppRoute.ItemesNew,arguments: {
      "categories":categories ,
      "selectedCat":selectedCat,
      "catid":catid
     
    });
    
  }
}
