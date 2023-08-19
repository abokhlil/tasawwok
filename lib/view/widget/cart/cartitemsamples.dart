import 'package:ecommerce_application/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/imageconstant.dart';

class CartItemSamples extends StatelessWidget {
  const CartItemSamples(
      {super.key,
      required this.nameProduct,
      required this.quantity,
      required this.price,
      required this.idProduct});
  final String nameProduct;
  final String quantity;
  final String price;
  final String idProduct;
  @override
  Widget build(BuildContext context) {
    CartControllerImp controllerImp = Get.put(CartControllerImp());
    return GetBuilder<CartControllerImp>(
      builder: (controller) {
        return Column(
          children: [
            Container(
              height: 110,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Radio(
                      value: "",
                      groupValue: "",
                      activeColor: Color(0xFF4C53A5),
                      onChanged: (index) {}),
                  Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(right: 15),
                    child: Image.asset(AppImageAsset.tshirt),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          nameProduct,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                        Text(
                          "${price}\$",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            controllerImp.deleteProductFromCart(idProduct);
                          },
                          icon: Icon(Icons.delete_outline),
                          color: Colors.red,
                        ),
                        Row(
                          children: [
                            Container(
                                padding: EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 10,
                                    )
                                  ],
                                ),
                                child: Container(
                                    height: 40,
                                    child: IconButton(
                                        onPressed: () {
                                          controllerImp.subProducts();
                                        },
                                        icon: Icon(Icons.remove)))),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 2),
                              child: Text(
                                controllerImp.count.toString(),
                                //  controllerImp.count.toString(),
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                  )
                                ],
                              ),
                              child: Container(
                                height: 40,
                                child: IconButton(
                                  onPressed: () {
                                    controllerImp.addProducts();
                                  },
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
