import 'package:bloc_session_two/model/handling_models.dart';
import 'package:bloc_session_two/model/post_model.dart';
import 'package:dio/dio.dart';

Future<ResultModel> getAllPosts() async {
  Dio dio = Dio();
  try {
    Response response =
        await dio.get('https://jsonplaceholder.typicode.com/posts');
    if (response.statusCode == 200) {
      List<PostModel> posts = List.generate(
        response.data.length,
        (index) => PostModel.fromMap(
          response.data[index],
        ),
      );
      return ListOf<PostModel>(data: posts);
    } else {
      return ErrorModel(message: 'Please check your intenet connection');
    }
  } on DioException catch (e) {
    return ExceptionModel(
      message: e.toString(),
    );
  }
}
