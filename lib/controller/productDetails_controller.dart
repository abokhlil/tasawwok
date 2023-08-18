import 'dart:convert';

import 'package:ecommerce_application/controller/auth/login_controller.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

abstract class ProductDetailsController extends GetxController{

}

class ProductDetailsControllerImp extends ProductDetailsController{





  // late String name;
  // late String slug;
  // late String price;
  // late String description;
  // late String rate;


    var arguments = Get.arguments;
  late final name = Get.arguments[0];
  late final slug = Get.arguments[1];
  late final price = Get.arguments[2];
  late final quantity= Get.arguments[3];
  late final description = Get.arguments[4];
  late final id = Get.arguments[5];

  ///late final rating = Get.arguments[6];




  int rate = 0;

  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController commentFORrating;
  late String ratingMessage;
 
 
 
 // ProductDetailsControllerImp log = ProductDetailsControllerImp(Get.find());
  
 


  


  @override
  void onInit() {
    commentFORrating=TextEditingController();
    super.onInit();
  }


@override
void dispose(){

  commentFORrating.dispose();
  super.dispose();
  
}














  Future<void> RatingProduct() async {
     print("111111111111111");
    final url = 'http://10.0.2.2:8000/api/product/user_rate/$id';
    try {
      var headers =  {
        
        'Accept': 'application/json',
        'Authorization': 'Bearer ${LoginControllerImp.token}',
         'Content-Type': 'application/x-www-form-urlencoded',
      };

      var request = http.Request('POST', Uri.parse(url));
      request.bodyFields = {
  'rating': '4',
  'comment': "$commentFORrating",
};

request.headers.addAll(headers);

http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
  print(await response.stream.bytesToString());

   var responseString = await response.stream.bytesToString();
  print(responseString);
final decodedMap = json.decode(responseString);
ratingMessage=decodedMap['message'];
 print(ratingMessage);
 


}
else {
  print(response.reasonPhrase);
}
    } catch (error) {
      print('errorrrrrrr: $error');
    }
  }















Future<void> AddingProductToCart() async {
     print("111111111111111");
    final url = 'http://10.0.2.2:8000/api/add/product/to/cart-item/$id';
    try {

      var headers =  {
        
        'Accept': 'application/json',
        'Authorization': 'Bearer ${LoginControllerImp.token}',
        
      };

      var request = http.Request('POST', Uri.parse(url));
      request.bodyFields = {};

request.headers.addAll(headers);

http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
  print(await response.stream.bytesToString());
}
else {
  print(response.reasonPhrase);
}
    } catch (error) {
      print('errorrrrrrr: $error');
    }
  }








Future<void> AddingProductToFavourites() async {
     print("111111111111111");
    final url = 'http://10.0.2.2:8000/api/set/favorite/product/$id';
    try {

      var headers =  {
        
        'Accept': 'application/json',
        'Authorization': 'Bearer ${LoginControllerImp.token}',
        
      };

      var request = http.Request('POST', Uri.parse(url));
     

request.headers.addAll(headers);

http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
  print(await response.stream.bytesToString());
}
else {
  print(response.reasonPhrase);
}
    } catch (error) {
      print('errorrrrrrr: $error');
    }
  }


















































}