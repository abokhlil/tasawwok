

import 'package:flutter/material.dart';

class ListItemHome extends StatelessWidget {
  const ListItemHome({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,i){
                  return  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Image.asset("assets/images/onboarding1.png",
                        height: 100,
                        width: 150,
                        fit: BoxFit.fill,),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                 
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 120,
                        width: 200,
                       
                        
                      ),
                      

                    ],

                  );

                }),
            );
  }
}