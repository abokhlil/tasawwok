import 'package:ecommerce_application/controller/TopRatedProduct_controller.dart';
import 'package:ecommerce_application/controller/listitemsearch_controller.dart';
import 'package:ecommerce_application/view/screen/productDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/TopRatedProduct_controller.dart';

class listitemSearch extends StatelessWidget {
  final searchItemcontroller = Get.put(ItemSearchController());
  late var name;
   var slug;
    var price;
     var description;
      var rate;
      var quantity;
      var id;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SizedBox(
          height: 200,
          child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: searchItemcontroller.SearchProductDataList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                // final topratingproduct = topratedcontroller.topRatedProducts[i];
                return GestureDetector(
                    onTap: () {
                         name=searchItemcontroller.SearchProductDataList[i]['Name'];
                      slug=searchItemcontroller.SearchProductDataList[i]["Slug"];
                      price=searchItemcontroller.SearchProductDataList[i]["Price"].toString();
                      quantity = searchItemcontroller.SearchProductDataList[i]["Quantity"];
                      description=searchItemcontroller.SearchProductDataList[i]["description"];
                      id = searchItemcontroller.SearchProductDataList[i]["id"];
      
                     // rate=Randomcontroller.RandomDataList[i]["rate"];
                      print(searchItemcontroller.SearchProductDataList[i]['Slug']);
                      print(name);
                      Get.to(ProductDetails(),
                      arguments: [name,slug,price,quantity,description,id],
                      // [
                      //   Randomcontroller.RandomDataList[i]['Name'],
                      //   Randomcontroller.RandomDataList[i]['Slug'],
                      //   Randomcontroller.RandomDataList[i]['Price'],
                      //   Randomcontroller.RandomDataList[i]['Quantity'],
                      //   Randomcontroller.RandomDataList[i]['description'],
      
                      // ]
                       );
                    },
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              child: Image.asset(
                                "assets/images/onboarding1.png",
                                
                                height: 100,
                                width: 150,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            
                              height: 120,
                              width: 200,
                            ),
                          ],
                        ),
                        Text(
                          
                                  searchItemcontroller.SearchProductDataList[i]['Name'],maxLines: 2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                                   Text(
                          
                                  "${searchItemcontroller.SearchProductDataList[i]['Price'].toString()} SP",maxLines: 2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
      
                      ],
                    ));
              }),
        ),
      ),
    );
  }
}
