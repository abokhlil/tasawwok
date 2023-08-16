import 'package:flutter/material.dart';

import '../../../core/constant/imageconstant.dart';


class CategoryAll extends StatelessWidget {
  const CategoryAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: GridView.builder(
            padding: EdgeInsets.all(4.0),
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                mainAxisSpacing: 0.0,
                crossAxisSpacing: 0.0),
            itemCount: 12,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Stack(children: [
                  Container(
                    height: 150.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        image: DecorationImage(
                          image: AssetImage(AppImageAsset.onBoardingImageTwo),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Color(0xFF303030), BlendMode.difference),
                        )),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                          text: "Title",
                          style:
                              TextStyle(color: Colors.white, fontSize: 18.0))
                    ])),
                  ),
                ]),
              );
            }),
      ),
    );
  }
}
