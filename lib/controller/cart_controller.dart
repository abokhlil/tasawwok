import 'dart:convert';

import 'package:ecommerce_application/controller/auth/login_controller.dart';
import 'package:ecommerce_application/core/class/crud.dart';
import 'package:ecommerce_application/core/class/statusrequest.dart';
import 'package:ecommerce_application/core/constant/routesname.dart';
import 'package:ecommerce_application/core/function/handling_data.dart';
import 'package:ecommerce_application/data/datasource/remote/auth/login_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

abstract class CartController extends GetxController {
  addProducts();
  subProducts();
  getAllProductsInCart();
  deleteProductFromCart(idPruduct);
}

class CartControllerImp extends CartController {
  static var token = '';
  List listProductCart = [];
  var totalPrice = 0;

  LoginData loginData = LoginData(Get.find());
  int count = 2;
  @override
  subProducts() {
    print('Sub');
    if (count > 0) {
      count--;
    }

    update();
  }

  @override
  addProducts() {
    print('Add');
    if (count < 20) {
      count++;
    }
    update();
  }

  @override
  Future<http.Response> getAllProductsInCart() async {
    http.Response response = await http.get(
        Uri.parse('http://10.0.2.2:8000/api/fetch/product/in/my/cart'),
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer ${LoginControllerImp.token}'
        });
    if (response.statusCode == 200) {
      var map = jsonDecode(response.body);
      if (map['message'] == 'success fetch all product in your card') {
        listProductCart = map['data'];
        totalPrice = map['totalPrice'];
      } else {
        Get.defaultDialog(
          title: 'oops',
          middleText: 'there is no products '
        );
      }
      print(listProductCart);
      update();
      return response;
    } else {
      throw new Exception('can not load');
    }
  }

  @override
  void onInit() {
    getAllProductsInCart();
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  deleteProductFromCart(idPruduct) async {
    var headers = {'Authorization': 'Bearer ${LoginControllerImp.token}'};
    var request = http.Request(
        'POST',
        Uri.parse(
            'http://10.0.2.2:8000/api/delete/product/in/my/cart/$idPruduct'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }




 Future<void> makeOrder()async{


    var headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer ${LoginControllerImp.token}'
};
var request = http.Request('POST', Uri.parse('http://10.0.2.2:8000/api/make/order'));

request.headers.addAll(headers);

http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
  print(await response.stream.bytesToString());
}
else {
  print(response.reasonPhrase);
}
  }





















}
