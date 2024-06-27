import 'package:dio/dio.dart';
import 'package:value_notifier_provider_theme/models/post_model.dart';

Future<List<PostModel>> getAllPost() async {
  Dio dio = Dio();
  try {
    Response response =
        await dio.get('https://jsonplaceholder.typicode.com/posts');

    if (response.statusCode == 200) {
      print(response.data);
      List<PostModel> posts = List.generate(
        response.data.length,
        (index) => PostModel.fromMap(
          response.data[index],
        ),
      );
      return posts;
    } else {
      return [];
    }
  } catch (e) {
    print(e);
    return [];
  }
}
