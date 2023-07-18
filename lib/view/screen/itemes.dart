import 'package:ecommerce_application/view/screen/tabbar/categoryall.dart';
import 'package:flutter/material.dart';
import '../../core/constant/colors.dart';

class Itemes extends StatelessWidget {
  const Itemes({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 9,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              "welcome",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            bottom: const TabBar(
                isScrollable: true,
                indicator: BoxDecoration(color: AppColor.grey),
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelColor: Colors.black,
                labelColor: AppColor.therdColor,
                automaticIndicatorColorAdjustment: false,
                tabs: [
                  Text("Men"),
                  Text("Woman"),
                  Text("Kids"),
                  Text("jjj"),
                  Text("ooos"),
                  Text("ooos"),
                  Text("ooos"),
                  Text("ooos"),
                  Text("ooos"),
                ]),
          ),
          body: const TabBarView(
            children: [
              //Text("All"),
              CategoryAll(),
              Text("Men"),
              Text("Woman"),
              Text("Kids"),
              Text("Kids"),
              Text("Kids"),
              Text("Kids"),
              Text("Kids"),
              Text("Kids"),
            ],
          ),
        ));
  }
}
