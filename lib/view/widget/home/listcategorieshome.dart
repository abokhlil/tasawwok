

import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';



class ListCategoriesHome extends StatelessWidget {
  const ListCategoriesHome({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
            SizedBox(
              height: 100,
              child: ListView.separated(
                separatorBuilder: (context, index) =>const SizedBox(width: 10,),
                itemCount: 10,
                scrollDirection:Axis.horizontal ,
                itemBuilder: (context,index){
                    return Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(color: AppColor.therdColor,
                          borderRadius: BorderRadius.circular(20)),
                          padding:const EdgeInsets.symmetric(horizontal: 10),
                          height: 70,
                          width: 70,
                          child: Icon(Icons.face_2),
                        ),
                        Text("Categories",style: TextStyle(fontSize: 13,color: Colors.black),),
                      ],
                    );

              }, ),
            );
  }
}