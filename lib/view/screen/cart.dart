import 'package:ecommerce_application/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/cart_controller.dart';
import '../widget/cart/appbarcart.dart';
import '../widget/cart/cartbottomnavbar.dart';
import '../widget/cart/cartitemsamples.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});
  @override
  Widget build(BuildContext context) {
    CartControllerImp controller = Get.put(CartControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Cart',
            style: TextStyle(color: AppColor.primaryColor),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  controller.getAllProductsInCart();
                },
                icon: Icon(Icons.refresh),
                color: AppColor.purple,)
          ],
        ),
        body: GetBuilder<CartControllerImp>(builder: (_) {
          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                     controller.listProductCart.isEmpty ?Center(
                      child: Text('there is no products'),
                     ) : ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return CartItemSamples(
                              nameProduct: controller.listProductCart[index]
                                  ['Name'],
                              price: controller.listProductCart[index]['Price']
                                  .toString(),
                              quantity: controller.listProductCart[index]
                                      ['Quantity']
                                  .toString(),
                              idProduct: controller.listProductCart[index]['id']
                                  .toString(),
                            );
                          },
                          separatorBuilder: (context, index) => Divider(
                                color: Colors.black,
                              ),
                          itemCount: controller.listProductCart.length),
                    ],
                  ),
                ),
              ),
              CartBottomNavBar(
                textbutton: "Check Out",
                onPressed: () {
                  controller.makeOrder();
                },
                
                totalprice: controller.totalPrice.toString(),
              )
            ],
          );
        }));
  }
}











//  body: ListView(children: [
//           AppBarCart(
//             title: "Cart",
//           ),
//           Container(
//             height: 700,
//             padding: EdgeInsets.only(top: 15),
//             decoration: BoxDecoration(
//                 color: Colors.grey[300],
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(35),
//                   topRight: Radius.circular(35),
//                 )),
//             child: Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     ListView.separated(
//                         shrinkWrap: true,
//                         physics: NeverScrollableScrollPhysics(),
//                         itemBuilder: (context, index) {
//                           CartItemSamples();
//                         },
//                         separatorBuilder: (context, index) =>SizedBox(
//                           height: 5,
//                         ),
//                         itemCount: 5)
//                     // CartItemSamples(),
//                     // SizedBox(height: 1,),
//                     // CartItemSamples(),
//                     // SizedBox(height: 1,),
//                     //   CartItemSamples(),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ]),
//         bottomNavigationBar: CartBottomNavBar(
//           textbutton: "Check Out",
//           onPressed: () {},
//           totalprice: '1200',
//         )