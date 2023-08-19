import 'dart:convert';
import 'package:ecommerce_application/controller/auth/login_controller.dart';
import 'package:ecommerce_application/controller/productDetails_controller.dart';
import 'package:ecommerce_application/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;



class ProductDetails extends StatelessWidget {
   const ProductDetails({super.key});

   
  


  // var arguments = Get.arguments;
  // late final name = Get.arguments[0];
  // late final slug = Get.arguments[1];
  // late final price = Get.arguments[2];
  // late final quantity= Get.arguments[3];
  // late final description = Get.arguments[4];
  // late final id = Get.arguments[5];




  // int rate = 0;
  





//  Future<void> RatingProduct() async {
//      print("111111111111111");
//     final url = 'http://10.0.2.2:8000/api/product/user_rate/$id';
//     try {
//       var headers =  {
        
//         'Accept': 'application/json',
//         'Authorization': 'Bearer ${LoginControllerImp.token}',
//          'Content-Type': 'application/x-www-form-urlencoded',
//       };

//       var request = http.Request('POST', Uri.parse(url));
//       request.bodyFields = {
//   'rating': '4',
//   'comment': 'hello good andsdfjklsdjf sdfsadf'
// };

// request.headers.addAll(headers);

// http.StreamedResponse response = await request.send();

// if (response.statusCode == 200) {
//   print(await response.stream.bytesToString());
// }
// else {
//   print(response.reasonPhrase);
// }
//     } catch (error) {
//       print('errorrrrrrr: $error');
//     }
//   }




// Future<void> AddingProductToCart() async {
//      print("111111111111111");
//     final url = 'http://10.0.2.2:8000/api/add/product/to/cart-item/$id';
//     try {

//       var headers =  {
        
//         'Accept': 'application/json',
//         'Authorization': 'Bearer ${LoginControllerImp.token}',
        
//       };

//       var request = http.Request('POST', Uri.parse(url));
//       request.bodyFields = {};

// request.headers.addAll(headers);

// http.StreamedResponse response = await request.send();

// if (response.statusCode == 200) {
//   print(await response.stream.bytesToString());
// }
// else {
//   print(response.reasonPhrase);
// }
//     } catch (error) {
//       print('errorrrrrrr: $error');
//     }
//   }












// Future<void> AddingProductToFavourites() async {
//      print("111111111111111");
//     final url = 'http://10.0.2.2:8000/api/set/favorite/product/$id';
//     try {

//       var headers =  {
        
//         'Accept': 'application/json',
//         'Authorization': 'Bearer ${LoginControllerImp.token}',
        
//       };

//       var request = http.Request('POST', Uri.parse(url));
     

// request.headers.addAll(headers);

// http.StreamedResponse response = await request.send();

// if (response.statusCode == 200) {
//   print(await response.stream.bytesToString());
// }
// else {
//   print(response.reasonPhrase);
// }
//     } catch (error) {
//       print('errorrrrrrr: $error');
//     }
//   }










































  
  @override
  Widget build(BuildContext context) {
    Get.put(ProductDetailsControllerImp());
    //ProductDetailsControllerImp oo = ProductDetailsControllerImp();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: Text("Product Details"),),
      body:GetBuilder<ProductDetailsControllerImp>(
          builder: (controller) =>
       Padding(
        padding: const EdgeInsets.only(left: 40 ,top: 15,right: 40),
        child: Form(
          key: controller.formState,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            child:
             SingleChildScrollView(
              scrollDirection: Axis.vertical,
               child: Column(mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                                          CircleAvatar(
                                        backgroundColor: AppColor.primaryColor,
                                        radius: 70,
                                        child: 
                                       
                                            //  Text(
                                            //     " Image !",
                                            //     style: TextStyle(
                                            //         color: Colors.black,
                                            //         fontWeight: FontWeight.bold),
                                            //   )
                                            ClipOval(
                                              child: Image.asset('assets/images/product.jpg',
                                              fit: BoxFit.cover,
                                              height: 130,
                                              width: 130,
                                              ),
                                              
                                              ),
                                             
                                      ),
                                      SizedBox(height: 20,),
                
                
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.text_snippet_sharp,color: AppColor.primaryColor,size: 25,),
                                            SizedBox(width: 10,),
                                            Text("Product Name :  ${controller.name}",style: TextStyle(fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 15,),
                                       SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                         child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.draw_rounded,color: AppColor.primaryColor,size: 25,),
                                            SizedBox(width: 10,),
                                           Text("Product slug : ${controller.slug} ",style: TextStyle(fontWeight: FontWeight.bold),),
                                          ],
                                                                             ),
                                       ),
                                       
                                      SizedBox(height: 15,),
                                       SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                         child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.paid,color: AppColor.primaryColor,size: 25,),
                                            SizedBox(width: 10,),
                                           Text("Product price :  ${controller.price} ",style: TextStyle(fontWeight: FontWeight.bold),),
                                          ],
                                                                             ),
                                       ),

                                      
                                      SizedBox(height: 15,),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.onetwothree_sharp,color: AppColor.primaryColor,size: 25,),
                                            SizedBox(width: 10,),
                                           Text("Product quantity :  ${controller.quantity} ",style: TextStyle(fontWeight: FontWeight.bold),),
                                          ],
                                                                              ),
                                        ),

                                      
                                      SizedBox(height: 15,),
                                       SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                         child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.question_answer_sharp,color: AppColor.primaryColor,size: 25,),
                                            SizedBox(width: 10,),
                                           Text("Product description :   ${controller.description} ",style: TextStyle(fontWeight: FontWeight.bold),),
                                          ],
                                                                             ),
                                       ),

                                       
                                      SizedBox(height: 15,),

                                       

                                      
                                      SizedBox(height: 10,),
                     
                                      RatingBar(
                
                                      minRating: 1,
                                      maxRating: 5,
                                      initialRating: 3,
                                      allowHalfRating: false,
                                      updateOnDrag: false,
                                      tapOnlyMode: true,
                                      ratingWidget: RatingWidget(full: Icon(Icons.star,color: Colors.amber,), half: Icon(Icons.star,color: Colors.amber,), empty: Icon(Icons.star,color: Colors.grey,)),
                                      onRatingUpdate: (rate){
                                        print(rate.round());
                                       print(controller.arguments);
                                       
                                      },
                     
                                      ),
                                      SizedBox(height: 10,),
                                      TextFormField(
                                        controller:controller.commentFORrating ,
                                         decoration: InputDecoration(
                         hintText: "what do you think about this product ?",
                         hintStyle: const TextStyle(fontSize: 14),
                         floatingLabelBehavior: FloatingLabelBehavior.always,
                         border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                         ),
                         contentPadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 35),
                         label: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text("enter your opinion"),
                         ),
                         suffixIcon: InkWell(
                child: Icon(Icons.textsms_sharp,color: AppColor.primaryColor,),
                onTap: (){},
                         ),
                       ),
                                      ),
                                      SizedBox(height: 15,),
                                      
                                      ElevatedButton(onPressed: (){



                                         controller.RatingProduct();
                                        print("the product has been rated as ${controller.rate}");
                                        print(controller.commentFORrating.text);
                                        Get.defaultDialog(title: "product rated",middleText: "...");


                                      },
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(AppColor.primaryColor)
                                      ),
                                      
                                      
                                       child: Text("SUBMIT",style: TextStyle(fontWeight: FontWeight.bold),)),

                                      // TextButton(onPressed: (){
                                      //   controller.RatingProduct();
                                      //   print("the product has been rated as ${controller.rate}");
                                      //   print(controller.commentFORrating.text);
                                      //   Get.defaultDialog(title: "rated");
                                      // },
                                      //  child: Text("SUBMIT",style: TextStyle(fontWeight: FontWeight.bold),)
                                      //  ),
                                       Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                        Icon(Icons.shopping_cart_outlined,color: AppColor.primaryColor,size: 30,),
                                        SizedBox(width: 10,),
                                        ElevatedButton(
                                           style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(AppColor.primaryColor)
                                      ),
                                          
                                          onPressed: (){controller.AddingProductToCart();
                                          Get.defaultDialog(title: "product added to cart",middleText: "...");
                                          
                                          }, child: Text("Add Product to my cart",style: TextStyle(fontWeight: FontWeight.bold),))
                                       ],),
                                       
                                         
                                           Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                          Icon(Icons.favorite_border,color:Colors.red,size: 30,),
                                          SizedBox(width: 10,),
                                          ElevatedButton(
                                            style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(AppColor.primaryColor)
                                      ),
                                            onPressed: (){controller.AddingProductToFavourites();
                                            Get.defaultDialog(title: "product added to favourites",middleText: "...");
                                            
                                            
                                            
                                            }, child: Text("Add Product to favourites",style: TextStyle(fontWeight: FontWeight.bold),))
                                                                             ],),
                                        
                
                
                
                         ],),
             ),
            
          
            
          
          ),
        ),
      ),
    ),);

  }
}