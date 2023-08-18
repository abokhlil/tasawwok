import 'package:ecommerce_application/controller/favorite_controller.dart';
import 'package:ecommerce_application/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/cart_controller.dart';
import '../widget/cart/cartbottomnavbar.dart';
import '../widget/cart/cartitemsamples.dart';
import '../widget/home/favoriteCart.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});
  @override
  Widget build(BuildContext context) {
    FavoriteControllerImp controller = Get.put(FavoriteControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Favorite',
            style: TextStyle(color: AppColor.primaryColor),
          ),
          actions: [
            IconButton(
              onPressed: () {
                controller.getAllFavorite();
              },
              icon: Icon(Icons.refresh),
              color: AppColor.purple,
            )
          ],
        ),
        body: GetBuilder<FavoriteControllerImp>(builder: (_) {
          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      controller.listFavorite.isEmpty
                          ? Center(
                              child: Text('there is no products'),
                            )
                          : ListView.separated(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, i) {
                                return FavoriteCart(
                                 
                                  nameProduct:controller.listFavorite[i]['Name'] , 
                                  price: controller.listFavorite[i]['Price'].toString(),
                                   id: controller.listFavorite[i]['id'].toString(), 
                                 );
                                // CartItemSamples(
                                //   nameProduct: controller.listProductCart[index]
                                //       ['Name'],
                                //   price: controller.listProductCart[index]['Price']
                                //       .toString(),
                                //   quantity: controller.listProductCart[index]
                                //           ['Quantity']
                                //       .toString(),
                                //   idProduct: controller.listProductCart[index]['id']
                                //       .toString(),
                                // );
                              },
                              separatorBuilder: (context, index) => Divider(
                                    color: Colors.black,
                                  ),
                              itemCount: controller.listFavorite.length),
                    ],
                  ),
                ),
              ),
              // CartBottomNavBar(
              //   textbutton: "Check Out",
              //   onPressed: () {},
              //   totalprice: controller.totalPrice.toString(),
              // )
            ],
          );
        }));
  }
}
