


//still need to be edited


import 'package:ecommerce_application/controller/search_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controller/settings_controller.dart';
import '../../core/constant/colors.dart';
import '../../core/constant/imageconstant.dart';


class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    SearchController controller= Get.put(SearchController());

    return Container(
      child: ListView(
        children: [Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: Get.width /3,color: AppColor.therdColor
            ),
            Positioned(
              top: Get.width /3.9,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(AppImageAsset.tshirt),
                ),
              )),
              
          ],
        ),
        SizedBox(height: 100,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                        ListTile(
                          onTap: (){},
                          trailing: Switch(value: true, onChanged: (val){}),
                        title: Text("Disable Notification"),
                        
                      ),
                      
                        ListTile(
                          onTap: (){},
                        title: Text("Address"),
                        trailing: Icon(Icons.location_on_outlined),
                      ),
                      
                      ListTile(
                        onTap: (){},
                        title: Text("About us"),
                        trailing: Icon(Icons.help_outline_rounded),
                      ),
                      
                       ListTile(
                        onTap: (){},
                        title: Text("Contact us"),
                        trailing: Icon(Icons.phone_callback_outlined),
                      ), 
                     
                      ListTile(
                        onTap: (){
                         
                        },
                        title: Text("Logout"),
                        trailing: Icon(Icons.exit_to_app),
                      ),
                     
                    ],
                  ),
                ),
        ),
      ]),
      
      
    );
  }
}

