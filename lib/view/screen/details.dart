import 'package:flutter/material.dart';

import '../../core/constant/colors.dart';
import '../widget/details/priceandcount.dart';
import '../widget/details/topproductpage.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        height: 40,
        child: MaterialButton(
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
          color: AppColor.secoundColor, onPressed: (){},
          child: const Text("Add to cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
      ),
      body: 
      ListView(
        children: [
          const TopProductPageDetails(),
             const SizedBox(height: 100,),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Laptop surface go 2",style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.black)),
                    const SizedBox(height: 10,),
                    PriceAndCount(onPressed: (){}, onRemove: (){}, count: "200", price: "2"),
                       
                    const SizedBox(height: 10,),

                    Text("Laptop amazing core is gen 33 ram Laptop amazing core is gen 33 ram Laptop \n amazing core is gen 33 ram",
                    style: Theme.of(context).textTheme.bodyMedium),
                   const SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                        margin: EdgeInsets.only(
                          right: 10
                        ),
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(bottom: 5),
                        height: 60,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Red",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                       Container(
                          margin: EdgeInsets.only(
                          right: 10
                        ),
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(bottom: 5),
                        height: 60,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Black",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                        Container(
                          margin: EdgeInsets.only(
                          right: 10
                        ),
                    )],
                    ),

            
                  ],
                ),
              )
              ]),
                );
                }}
      
           