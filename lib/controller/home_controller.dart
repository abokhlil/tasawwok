import 'package:ecommerce_application/controller/auth/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../view/screen/home.dart';
import '../view/screen/itemes.dart';
import '../view/screen/settings.dart';
import 'package:http/http.dart' as http;

abstract class HomeController extends GetxController {
}

class HomeControllerImp extends HomeController {

  
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  static late TextEditingController searchcontent;
  bool isSearching = false;



  checkSearch(val){

   if (val == ""){
    isSearching=false;
   }
   update();

  }


  onSearch(){
    isSearching=true;
    update();
  }



  @override
  void onInit(){
    searchcontent =TextEditingController();
    super.onInit();
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






// Future<void> searchProduct()async{

// var headers = {
//   'Accept': 'application/json',
//   'Authorization': 'Bearer ${LoginControllerImp.token}',
//   'Content-Type': 'application/x-www-form-urlencoded'
// };
// var request = http.Request('POST', Uri.parse('http://10.0.2.2:8000/api/search/product'));
// request.bodyFields = {
//   'search_field': 'prrrr'
// };
// request.headers.addAll(headers);

// http.StreamedResponse response = await request.send();

// if (response.statusCode == 200) {
//   print(await response.stream.bytesToString());
// }
// else {
//   print(response.reasonPhrase);
// }

// }

}
