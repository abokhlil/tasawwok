

import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String titleappbar;
  final void Function()? onPressedIcon;
  final void Function()? onPressedSearch;
  final void Function(String)? onChanged;
  final TextEditingController searchcontroller;


   const CustomAppbar({Key? key,
   required this.titleappbar, 
   this.onPressedIcon, 
   this.onPressedSearch,
   this.onChanged,
   required this.searchcontroller,
   })
  :super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return  Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Expanded(child: TextFormField(
                    controller:searchcontroller ,
                    onChanged:onChanged ,
                    decoration: InputDecoration(
                      prefixIcon: IconButton(icon: Icon(Icons.search),onPressed: onPressedSearch,),
                      hintText: titleappbar,
                      hintStyle: TextStyle(fontSize: 18),
                      border: OutlineInputBorder(borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25)),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  )
                  ),
                  SizedBox(width: 10,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 60,
                    padding: EdgeInsets.symmetric(vertical: 8),
                    
                    child: IconButton(onPressed: onPressedIcon,
                     icon: Icon(Icons.shopping_cart_checkout_outlined,
                     color: Colors.grey[600],)),),
                ],
              ),
            );
  }
}