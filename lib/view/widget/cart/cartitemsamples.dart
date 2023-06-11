

import 'package:flutter/material.dart';

import '../../../core/constant/imageconstant.dart';

class CartItemSamples extends StatelessWidget {
  const CartItemSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Container(
          height: 110,
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Radio(value: "", 
              groupValue: "",
              activeColor: Color(0xFF4C53A5),
              onChanged: (index){}),
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
                    Text("Product Title",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),),
                     Text("\$55",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),)
                    
                  ],
                ),),
                //Spacer()
                Padding(padding: EdgeInsets.symmetric(vertical: 5),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.delete,color: Colors.red,),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                              )
                            ],
                            
                          ),
                          child: Container(
                            height:40 ,
                            child: IconButton(onPressed: (){}, icon: Icon(Icons.remove)))
                        ),
                       Container(
                        padding: EdgeInsets.symmetric(horizontal: 2),
                        child: Text("01",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black

                        ),),
                       ),
                          Container(
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                              )
                            ],
                            
                          ),
                           child: Container(
                            height: 40,
                             child: IconButton(onPressed: (){},
                             
                             icon: Icon(Icons.add,),
                                                     ),
                           ),
                        )
                      ],
                    ),

                  ],
                ) 
                ,)
            ],
          ),
        )
      ],
    );
  }
}