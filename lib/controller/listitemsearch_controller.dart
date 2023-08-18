import 'package:ecommerce_application/controller/auth/login_controller.dart';
import 'package:ecommerce_application/controller/home_controller.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ItemSearch {
  final String name;
   final String slug;
   final String price;
   final String quantity;
   final String description;
   final String rate;
  


  ItemSearch(this.name, this.slug, this.price, this.quantity, this.description, this.rate);


}





class ItemSearchController extends GetxController {
  RxList<ItemSearch> searchProducts = <ItemSearch>[].obs;
  var SearchProductDataList = [].obs;
  late TextEditingController dd;
  

  @override
  void onInit() {
    super.onInit();
    fetchSearchProducts();
  }
   
  
  Future<void> fetchSearchProducts()async{

var headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer ${LoginControllerImp.token}',
  'Content-Type': 'application/x-www-form-urlencoded'
};

var request = http.Request('POST', Uri.parse('http://10.0.2.2:8000/api/search/product'));
request.bodyFields = {
  'search_field': HomeControllerImp.searchcontent.text
};
request.headers.addAll(headers);

http.StreamedResponse response = await request.send();

if (response.statusCode == 200) {
  var responseString = await response.stream.bytesToString();
  print(responseString);
final decodedMap = json.decode(responseString);
 print(decodedMap['result']);
 SearchProductDataList.value = decodedMap['result'] as List<dynamic>;


  
}
else {
  print(response.reasonPhrase);
}




    //  print("111111111111111");
    // final url = 'http://10.0.2.2:8000/api/top/rated/product';

    // try {
    //    print("1111111111111112222222222222222");
    //   final response = await http.get(Uri.parse(url), headers: {
    //     'Accept': 'application/json',
    //     'Authorization': 'Bearer ${LoginControllerImp.token}',
    //     'Content-Type': 'application/x-www-form-urlencoded'
    //   });

    //   if (response.statusCode == 200 ||response.statusCode == 201 ) {
    //      print("11111111111111133333333333333333333");
    //     final data = json.decode(response.body);

    //     print("heree2");
    //     print(data);
    //    if (data['message'] == 'succes fetch the top rated products') {
    //     print("message is correct");
    //        SearchProductDataList.value = data['data'] as List<dynamic>;
    //      print("guess here ");
    //      //print(TopRatedDataList);

    //      //next line has aproblem
    //       //topRatedProducts.assignAll(TopRatedDataList.map((topRatedProduct) => TopRatedProduct(topRatedProduct)).toList());
    //       // for(int i in TopRatedDataList)
    //       print(SearchProductDataList);

    //       print("orrrrr guess here ");
    //     }
    //   }
    // } catch (error) {
    //   print('errorrrrrrr: $error');
    // }









































 }


  void loadProductDetails(id) {}
}