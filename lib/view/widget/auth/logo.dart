import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/constant/imageconstant.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset(AppImageAsset.logoe,height: 180),
        // Image.asset(
        //   //AppImageAsset.logo,
        //   AppImageAsset.logoe,
        //   height: 180,
        // ),
      ],
    );
  }
}
