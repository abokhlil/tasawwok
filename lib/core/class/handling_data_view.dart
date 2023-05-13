import 'package:ecommerce_application/core/class/statusrequest.dart';
import 'package:ecommerce_application/core/constant/imageconstant.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(child: Lottie.asset(AppImageAsset.loading))
        : statusRequest == StatusRequest.offLineFailure
            ?  Center(child: Lottie.asset(AppImageAsset.loading))
            : statusRequest == StatusRequest.serverFailure
                ? Center(child: Lottie.asset(AppImageAsset.servererror))
                : statusRequest == StatusRequest.failure
                    ? Lottie.asset(AppImageAsset.nodata)
                    : widget;
  }
}
