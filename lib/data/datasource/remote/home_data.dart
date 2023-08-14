import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;

class HomeData extends StatelessWidget {

  Future<List<dynamic>> fetchData() async {
    var url = Uri.parse("http://10.0.2.2:8000/api/bas-catigories"); // استبدل هذا برابط API الخاص بك
    
    // أرسل طلب GET للحصول على البيانات من الAPI
    var response = await http.get(url);

    if (response.statusCode == 200) {
      // تحويل بيانات الاستجابة إلى قائمة من الكائنات
      var decodedData = json.decode(response.body);
      return decodedData;
    } else {
      print('حدث خطأ أثناء جلب البيانات: ${response.statusCode}');
      return [];
    }
  }


  const HomeData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber,)
    );
  }
}