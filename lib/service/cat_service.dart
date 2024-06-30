import 'package:dio/dio.dart';
import 'package:intro_to_service_clean/model/cat_model.dart';
import 'package:intro_to_service_clean/model/handling_model.dart';

class Service {
  Dio dio = Dio();
  late Response response;
  String baseurl = "https://freetestapi.com/api/v1/cats";
}

class CatService extends Service {
  Future<ResultModel> getOneCat() async {
    try {
      response = await dio.get(baseurl + '/1');
      if (response.statusCode == 200) {
        return CatModel.fromMap(response.data);
      } else {
        return ErrorModel(message: 'No Internet');
      }
    } catch (e) {
      return ExceptionModel(message: e.toString());
    }
  }

  Future<ResultModel> getAllCat() async {
    try {
      response = await dio.get(baseurl);
      print(response.data);
      if (response.statusCode == 200) {
        return ListOf<CatModel>(
            listResult: List.generate(
          response.data.length,
          (index) => CatModel.fromMap(response.data[index]),
        ));
      } else {
        return ErrorModel(message: "No Internet");
      }
    } catch (e) {
      print(e);
      return ExceptionModel(message: e.toString());
    }
  }
}
