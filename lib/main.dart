// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:model_and_api/cat_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  TodosModel todo =
      TodosModel(userId: 1, id: 1, title: 'Example', completed: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future:getData() ,
      builder: (context, result) {
        if (result.hasData) {
          return ListTile(
            leading: Text(result.data!.id.toString()),
            title: Text(result.data!.title),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    ));
  }
}

 
Future<TodosModel> getData()async{
 var response =await  Dio().get("https://jsonplaceholder.typicode.com/todos/1");
  TodosModel todo = TodosModel.fromMap(response.data);
  return todo;
}

class TodosModel {
  int userId;
  int id;
  String title;
  bool completed;
  TodosModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  static fromMap(Map map) {
    return TodosModel(
        userId: map['userId'],
        id: map['id'],
        title: map['title'],
        completed: map['completed']);
  }
}
