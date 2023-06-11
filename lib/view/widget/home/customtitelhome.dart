

import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';



class CustomTitelHome extends StatelessWidget {
  final String titel;
  const CustomTitelHome({Key? key, required this.titel}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(titel,
            style: const TextStyle(fontSize: 20,
            color: AppColor.therdColor,
            fontWeight: FontWeight.bold),);
  }
}