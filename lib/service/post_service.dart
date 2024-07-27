import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit_gennerator_build_runner/models/post_model.dart';


part 'post_service.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
 abstract class PostService {
  factory PostService(Dio dio) = _PostService;
  @GET('posts')
  Future<List<PostModel>> getPosts();
}
