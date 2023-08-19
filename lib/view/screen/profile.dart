

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controller/settings_controller.dart';
import '../../core/constant/colors.dart';
import '../../core/constant/imageconstant.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
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
                  //backgroundImage: AssetImage(AppImageAsset.tshirt),
                  child: Icon(Icons.person_rounded,size: 85,color: AppColor.primaryColor,),
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
                          leading:Icon(Icons.person_2),
                      
                        title: Text("User Name : Mohamed Yousef"),
                        
                        
                      ),
                      
                        ListTile(
                          onTap: (){},
                        title: Text("Address : Damascus_kaferSouseh"),
                        leading: Icon(Icons.location_on_outlined),
                      ),
                      
                      ListTile(
                        onTap: (){},
                        title: Text("Phone Number : 0962269365"),
                        leading: Icon(Icons.help_outline_rounded),
                      ),
                      
                       ListTile(
                        onTap: (){},
                        title: Text("Age : 22"),
                       leading: Icon(Icons.phone_callback_outlined),
                      ), 
                     
                      ListTile(
                        onTap: (){
                     
                        },
                        title: Text("Edit Profile"),
                        leading: Icon(Icons.exit_to_app),
                      ),
                     
                    ],
                  ),
                ),
        ),
      ]),
      
      
    );
  }
}

