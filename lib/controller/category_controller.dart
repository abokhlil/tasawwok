import 'package:ecommerce_application/core/constant/routesname.dart';
import 'package:flutter/material.dart';
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
   RxList<Category> categories2 = <Category>[].obs;
  int catid = 0;
  int? selectedCat;
  late TextEditingController l;

  @override
  void onInit() {
    l=TextEditingController();
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
        print("here");
        print(data);

        if (data['message'] == 'success fetch catigories') {
          final categoriesData = data['data'] as List<dynamic>;

          categories.assignAll(
              categoriesData.map((category) => Category(category)).toList());
        }
      }
    } catch (error) {
      print('حدث خطأ: $error');
    }
  }

   List twoCat = [];
  @override
  Future<http.Response> getTwoCategory(id) async {
    print('1');

    http.Response response = await http.get(
        Uri.parse('http://10.0.2.2:8000/api/catigory-product/$id'),
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer ${LoginControllerImp.token}'
        });
    print('2');
    if (response.statusCode == 200) {
      print('3');
      var map = jsonDecode(response.body);
      print('4');
      if (map['message'] == 'success fetch CatigoryProduct') {
        print('5');
        twoCat = map['data'];
        print('6');
      } else {
        Get.defaultDialog(title: 'oops', middleText: 'there is no products ');
      }
      print(twoCat);
      update();
      return response;
    } else {
      throw new Exception('can not load');
    }
  }




    // var headers = {
    //    'Accept': 'application/json',
    //   'Authorization': 'Bearer ${LoginControllerImp.token}'
    // };
    // var request = http.Request(
    //     'GET', Uri.parse('http://10.0.2.2:8000/api/catigory-product/$id'));

    // request.headers.addAll(headers);

    // http.StreamedResponse response = await request.send();

    // if (response.statusCode == 200) {
    //   print(await response.stream.bytesToString());
    
    // } else {
    //   print(response.reasonPhrase);
    // }
  }

