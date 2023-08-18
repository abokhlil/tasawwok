import 'package:ecommerce_application/controller/auth/login_controller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RandomProduct {
  final String name;
   final String slug;
   final String price;
   final String quantity;
   final String description;
   final String rate;
  


  RandomProduct(this.name, this.slug, this.price, this.quantity, this.description, this.rate);


}





class RandomProductController extends GetxController {
  RxList<RandomProduct> randomProducts = <RandomProduct>[].obs;
  var RandomDataList = [].obs;
  

  @override
  void onInit() {
    super.onInit();
    fetchRandomProducts();
  }
   
  
  Future<void> fetchRandomProducts() async {
     print("111111111111111");
    final url = 'http://10.0.2.2:8000/api/random/products';

    try {
       print("1111111111111112222222222222222");
      final response = await http.get(Uri.parse(url), headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer ${LoginControllerImp.token}',
      });

      if (response.statusCode == 200 ||response.statusCode == 201 ) {
         print("11111111111111133333333333333333333");
        final data = json.decode(response.body);

        print("heree2");
        print(data);
       if (data['message'] == 'get products successfully') {
        print("message is correct");
           RandomDataList.value = data['products'] as List<dynamic>;
         print("guess here ");
         //print(TopRatedDataList);

         //next line has aproblem
          //topRatedProducts.assignAll(TopRatedDataList.map((topRatedProduct) => TopRatedProduct(topRatedProduct)).toList());
          // for(int i in TopRatedDataList)
          print(RandomDataList);

          print("orrrrr guess here ");
        }
      }
    } catch (error) {
      print('errorrrrrrr: $error');
    }
  }

  void loadProductDetails(id) {}
}