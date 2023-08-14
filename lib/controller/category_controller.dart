import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Category {
  final String name;

  Category(this.name);

  get id => null;
}

class CategoryController extends GetxController {
  RxList<Category> categories = <Category>[].obs;

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
        'Authorization': 'Bearer 2|e6042rfqATQtr7XYwYlBRAqiy5vHG9msTFOaNVy0',
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
}

// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class Category {
//   final String name;

//   Category(this.name);

//   get id => null;
// }

// class HomeController extends GetxController {
//   RxList<Category> categories = <Category>[].obs;

//   @override
//   void onInit() {
//     super.onInit();
//     fetchCategories();
//   }

//   Future<void> fetchCategories() async {
//     final url = 'http://10.0.2.2:8000/api/bas-catigories';

//     try {
//       final response = await http.get(Uri.parse(url), headers: {
//         'Accept': 'application/json',
//         'Authorization': 'Bearer 2|e6042rfqATQtr7XYwYlBRAqiy5vHG9msTFOaNVy0',
//       });

//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);

//         if (data['message'] == 'success fetch catigories') {
//           final categoriesData = data['data'] as List<dynamic>;

//           //categories.assignAll(categoriesData.map((category) => Category(category['name'])).toList());
//         }
//       }
//     } catch (error) {
//       print('حدث خطأ: $error');
//     }
//   }

//   void loadCategoryData(id) {}
// }