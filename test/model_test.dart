import 'package:flutter_test/flutter_test.dart';
import 'package:retrofit_gennerator_build_runner/models/post_model.dart';

void main() {
  test("Intro to simple example in unit test", () {
    expect(1 + 1, 2);
  });

  test("Happy Scenario of Model FromMap", () {
    PostModel post = PostModel.fromMap({
      "userId": 1,
      "id": 1,
      "title":
          "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
      "body":
          "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
    });
    expect(post.runtimeType,PostModel);
  });
  test("Bad Scenario of Model FromMap", () {
    PostModel post = PostModel.fromMap({});
    expect(post.runtimeType,PostModel);
  });
}
