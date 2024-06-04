// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CatPage extends StatelessWidget {
  const CatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getCat(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListTile(
              title: Text(snapshot.data!.name),
              leading: Image.network(snapshot.data!.image),
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}

Future<CatModel> getCat() async {
  Dio req = Dio();

  var response = await req.get("https://freetestapi.com/api/v1/cats/1");

  CatModel cat = CatModel.fromMap(response.data);

  return cat;
}

class CatModel {
  String name;
  String origin;
  String image;
  CatModel({
    required this.name,
    required this.origin,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'origin': origin,
      'image': image,
    };
  }

  factory CatModel.fromMap(Map<String, dynamic> map) {
    return CatModel(
      name: map['name'] as String,
      origin: map['origin'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CatModel.fromJson(String source) =>
      CatModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
