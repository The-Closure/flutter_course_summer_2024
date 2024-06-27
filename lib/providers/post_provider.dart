import 'package:flutter/material.dart';
import 'package:value_notifier_provider_theme/models/post_model.dart';
import 'package:value_notifier_provider_theme/service/post_service.dart';

class PostProvider extends ChangeNotifier {
  bool isLoading = false;
  List<PostModel> posts = [];

  void getAllPostsFromProvider() async {
    isLoading = true;
    notifyListeners();
    posts = await getAllPost();
    isLoading = false;
    notifyListeners();
  }
}
