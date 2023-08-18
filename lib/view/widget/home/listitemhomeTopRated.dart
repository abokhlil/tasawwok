import 'package:ecommerce_application/controller/TopRatedProduct_controller.dart';
import 'package:ecommerce_application/view/screen/productDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/TopRatedProduct_controller.dart';

class listitemhomeTopRated extends StatelessWidget {
  final topratedcontroller = Get.put(TopRatedProductController());
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
      () => SizedBox(
        height: 200,
        child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemCount: topratedcontroller.TopRatedDataList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              // final topratingproduct = topratedcontroller.topRatedProducts[i];
              return GestureDetector(
                  onTap: () {
                       name=topratedcontroller.TopRatedDataList[i]['Name'];
                    slug=topratedcontroller.TopRatedDataList[i]["Slug"];
                    price=topratedcontroller.TopRatedDataList[i]["Price"].toString();
                    quantity = topratedcontroller.TopRatedDataList[i]["Quantity"];
                    description=topratedcontroller.TopRatedDataList[i]["description"];
                    id = topratedcontroller.TopRatedDataList[i]["id"];
                    rate=topratedcontroller.TopRatedDataList[i]["rate"].toString();

                   // rate=Randomcontroller.RandomDataList[i]["rate"];
                    print(topratedcontroller.TopRatedDataList[i]['rate']);
                    print(name);
                    Get.to(ProductDetails(),
                    arguments: [name,slug,price,quantity,description,id,rate],
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
                        
                                topratedcontroller.TopRatedDataList[i]['Name'],maxLines: 2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                                 Text(
                        
                                "${topratedcontroller.TopRatedDataList[i]['Price'].toString()} SP",maxLines: 2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),

                    ],
                  ));
            }),
      ),
    );
  }
}
