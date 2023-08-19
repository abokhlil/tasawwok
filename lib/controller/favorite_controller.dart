import 'dart:convert';
import 'package:ecommerce_application/controller/auth/login_controller.dart';
import 'package:ecommerce_application/data/datasource/remote/auth/login_data.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

abstract class FavoriteController extends GetxController {
  getAllFavorite();
  deleteFavoriteItem(id);
}

class FavoriteControllerImp extends FavoriteController {
  static var token = '';
  List listFavorite = [];
  var totalPrice = 0;

  LoginData loginData = LoginData(Get.find());

  @override
  Future<http.Response> getAllFavorite() async {
    print('1');

    http.Response response = await http.get(
        Uri.parse('http://10.0.2.2:8000/api/get/favorite/product'),
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer ${LoginControllerImp.token}'
        });
    print('2');
    if (response.statusCode == 200) {
      print('3');
      var map = jsonDecode(response.body);
      print('4');
      if (map['message'] == 'success fetch all favorite product') {
        print('5');
        listFavorite = map['data'];
        print('6');
      } else {
        Get.defaultDialog(title: 'oops', middleText: 'there is no products ');
      }
      print(listFavorite);
      update();
      return response;
    } else {
      throw new Exception('can not load');
    }
  }

  @override
  void onInit() {
    getAllFavorite();
    super.onInit();
  }

  @override
  void dispose() {

    super.dispose();
  }

  @override
  deleteFavoriteItem(id) async {
    var headers = {
      'Accept': 'application/json',
        'Authorization': 'Bearer ${LoginControllerImp.token}'
    };
    var request = http.Request(
        'POST',
        Uri.parse(
            'http://10.0.2.2:8000/api/delete/favorite/product/$id'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }
}
