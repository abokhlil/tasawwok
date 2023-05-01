import 'package:flutter/material.dart';

import '../../../core/constant/imageconstant.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImageAsset.logo,
          height: 180,
        ),
      ],
    );
  }
}
