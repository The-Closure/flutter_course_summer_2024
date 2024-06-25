import 'package:dio/dio.dart';
import 'package:search_with_data/model/bird_mode.dart';

Future<List<BirdMode>> getDataOfBird() async {
  Dio dio = Dio();
  Response response = await dio.get("https://freetestapi.com/api/v1/birds");
  if (response.statusCode == 200) {
    List<BirdMode> birds = [];
    for (var i = 0; i < response.data.length; i++) {
      birds.add(BirdMode.fromMap(response.data[i]));
    }
    return birds;
  } else {
    return [];
  }
}

Future<List<BirdMode>> searchInBird({String lexem =''}) async {
  Dio dio = Dio();
  Response response = await dio.get("https://freetestapi.com/api/v1/birds?search=${lexem}");
  if (response.statusCode == 200) {
    List<BirdMode> birds = [];
    for (var i = 0; i < response.data.length; i++) {
      birds.add(BirdMode.fromMap(response.data[i]));
    }
    return birds;
  } else {
    return [];
  }
}