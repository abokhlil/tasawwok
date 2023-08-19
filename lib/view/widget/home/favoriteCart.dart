import 'package:ecommerce_application/controller/cart_controller.dart';
import 'package:ecommerce_application/controller/favorite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/imageconstant.dart';

class FavoriteCart extends StatelessWidget {
  const FavoriteCart(
      {super.key,
      required this.nameProduct,
      required this.price,
      required this.id});
  final String nameProduct;
  final String price;
  final String id;
  @override
  Widget build(BuildContext context) {
    // FavoriteControllerImp controllerImp = Get.put(FavoriteControllerImp());
    return GetBuilder<FavoriteControllerImp>(
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
                           controller.deleteFavoriteItem(id);
                          },
                          icon: Icon(Icons.delete_outline),
                          color: Colors.red,
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
