import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:restapi_example/model/animal_model.dart';
import 'package:restapi_example/service/animal_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AllAnimalPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getOneAnimal(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data!.name);
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}

class AllAnimalPage extends StatelessWidget {
  const AllAnimalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getAllAnimal(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(snapshot.data![index].name),
              ),
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}

class CreateNewAnimal extends StatelessWidget {
  CreateNewAnimal({super.key});
  TextEditingController animalName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextField(
        controller: animalName,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      floatingActionButton: InkWell(
          onTap: () async {
            Dio dio = Dio();
            Response response = await dio.post(
                "https://664dcb37ede9a2b55654e96c.mockapi.io/api/v1/Animal",
                data: AnimalModel(name: animalName.text, id: '1').toJson());
          },
          child: Icon(Icons.send)),
    );
  }
}
