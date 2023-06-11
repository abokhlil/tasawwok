

import 'package:flutter/material.dart';
import '../../../core/constant/colors.dart';

class PriceAndCount extends StatelessWidget {
  final void Function()? onPressed;
  final void Function()? onRemove;
  final String count;
  final String price;
  const PriceAndCount({Key?key,required this.onPressed,required this.onRemove, required this.count, required this.price}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
                      children: [
                        Row(
                          children: [
                            IconButton(onPressed: onPressed, icon:const Icon(Icons.add)),
                            Container(
                              alignment: Alignment.topCenter,
                              padding:const EdgeInsets.only(bottom: 10),
                              width: 50,
                              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                              child: Text(count,
                              style:const TextStyle(fontSize: 20),),
                            ),
                            IconButton(onPressed: onRemove, icon:const Icon(Icons.remove)),

                          ],
                        ),
                       const Spacer(),
                        Text("$price\$",
                        style:const TextStyle(color: AppColor.primaryColor,fontSize: 30,height: 1.1),)

                      ],
                    );
  }
}