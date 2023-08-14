// To parse this JSON data, do
//
//     final categories = categoriesFromJson(jsonString);

import 'dart:convert';

Categories categoriesFromJson(String str) => Categories.fromJson(json.decode(str));

String categoriesToJson(Categories data) => json.encode(data.toJson());

class Categories {
    String message;
    List<String> data;

    Categories({
        required this.message,
        required this.data,
    });

    factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        message: json["message"],
        data: List<String>.from(json["data"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x)),
    };
}
