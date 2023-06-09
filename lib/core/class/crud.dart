import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_application/core/function/checkinternet.dart';
import 'package:get/get.dart';

import 'statusrequest.dart';
import 'package:http/http.dart ' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    print('ERROR 1');
    try {
      print('ERROR 2');
      if (await checkInternet()) {
        print('ERROR 3');
        var response = await http.post(Uri.parse(linkUrl), body: data);
        print('ERROR 4');
        if (response.statusCode == 200 || response.statusCode == 201) {
          print(response.body);
          print(response);
          print('ERROR 5');
          Map responseBody = jsonDecode(response.body);
          print('ERROR 6');
          print(responseBody);
          print('ERROR 7');
          return Right(responseBody);
        } else {
          Get.defaultDialog(
            title: 'serverFailure',
            middleText: 'serverFailure',
          );
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        Get.defaultDialog(
          title: 'no internet',
          middleText: 'offLineFailure',
        );
        return const Left(StatusRequest.offLineFailure);
      }
      ;
    } catch (_) {
      Get.defaultDialog(
        title: 'serverException',
        middleText: 'serverException ',
      );
      return const Left(StatusRequest.serverException);
    }
  }
}
