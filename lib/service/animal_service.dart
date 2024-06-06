import 'package:dio/dio.dart';
import 'package:restapi_example/model/animal_model.dart';

Future<AnimalModel?> getOneAnimal() async {
  Dio req = Dio();
  Response response = await req
      .get("https://664dcb37ede9a2b55654e96c.mockapi.io/api/v1/Animal/1");
  if (response.statusCode == 200) {
    print("Yes it is ${response.statusCode}");
    AnimalModel animal = AnimalModel.fromMap(response.data);
    return animal;
  } else {
    print("Nooo");
    return null;
  }
}

Future<List<AnimalModel>> getAllAnimal() async {
  Dio req = Dio();
  Response response = await req
      .get("https://664dcb37ede9a2b55654e96c.mockapi.io/api/v1/Animal");
  if (response.statusCode == 200) {
    List<AnimalModel> animals = [];

    for (var i = 0; i < response.data.length; i++) {
      AnimalModel animalModel = AnimalModel.fromMap(response.data[i]);

      animals.add(animalModel);
    }
    return animals;
  } else {
    print("Nooo");
    return [];
  }
}
