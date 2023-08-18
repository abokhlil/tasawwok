import 'package:ecommerce_application/core/constant/routesname.dart';
import 'package:ecommerce_application/core/middleware/my_middleware.dart';
import 'package:ecommerce_application/test_view.dart';
import 'package:ecommerce_application/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerce_application/view/screen/auth/forgetpassword/success_reset_password.dart';
import 'package:ecommerce_application/view/screen/auth/login.dart';
import 'package:ecommerce_application/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerce_application/view/screen/auth/signup.dart';
import 'package:ecommerce_application/view/screen/auth/success_%20signup.dart';
import 'package:ecommerce_application/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ecommerce_application/view/screen/auth/veriftycodesignup.dart';
import 'package:ecommerce_application/view/screen/cart.dart';
import 'package:ecommerce_application/view/screen/details.dart';
import 'package:ecommerce_application/view/screen/homescreen.dart';
import 'package:ecommerce_application/view/screen/itemsnew.dart';
import 'package:ecommerce_application/view/screen/language.dart';
import 'package:ecommerce_application/view/screen/onboarding.dart';
import 'package:ecommerce_application/view/screen/settings.dart';


import 'package:get/get.dart';

import 'data/datasource/remote/home_data.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage(name:"/", page:()=> const Language(), middlewares: [
  //   MyMiddleWare(),
  // ]), 

  

  GetPage(name:'/', page:()=> const Login()),

  GetPage(name:"/", page:()=> const Login()),
  GetPage(name:AppRoute.signUp, page:()=> const SignUp()),
  GetPage(name:AppRoute.forgetPassword, page:()=> const ForgetPassword()),
  GetPage(name:AppRoute.verifyCode, page:()=> const VerifyCode()),
  GetPage(name:AppRoute.resetPassword, page:()=> const ResetPassword()),
  GetPage(name:AppRoute.successResetPassword, page:()=> const SuccessResatPassword()),
  GetPage(name:AppRoute.successSignUP, page:()=> const SuccessSignUp()),
  GetPage(name:AppRoute.verifyCodeSignUp, page:()=> const VerifyCodeSignUp()),
  GetPage(name:AppRoute.onboarding, page:()=> const OnBoarding()),
  GetPage(name:AppRoute.homescreen, page:()=> const HomeScreen()),
  GetPage(name:AppRoute.settings, page:()=> const Settings()),
  GetPage(name:AppRoute.details, page:()=> const Details()),
  GetPage(name:AppRoute.cart, page:()=> const Cart()),
  GetPage(name:AppRoute.ItemesNew, page:()=> const ItemesNew()),


 // GetPage(name:"/", page:()=> const HomeData()),
];

// Map<String, Widget Function(BuildContext)> routess = {
//   // Auth
//   AppRoute.login: (context) => const Login(),
//   AppRoute.signUp: (context) => const SignUp(),
//   AppRoute.forgetPassword: (context) => const ForgetPassword(),
//   AppRoute.verifyCode: (context) => const VerifyCode(),
//   AppRoute.resetPassword: (context) => const ResetPassword(),
//   AppRoute.successResetPassword: (context) => const SuccessResatPassword(),
//   AppRoute.successSignUP: (context) => const SuccessSignUp(),
//   AppRoute.verifyCodeSignUp: (context) => const VerifyCodeSignUp(),

//   // OnBoarding
//   AppRoute.onboarding: (context) => const OnBoarding(),
// };
