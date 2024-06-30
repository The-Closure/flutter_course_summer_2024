// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:intro_to_service_clean/model/cat_model.dart';

class ErrorModel extends ResultModel {
  String message;
  ErrorModel({
    required this.message,
  });
}

class ListOf<T> extends ResultModel {
  List<T> listResult;
  ListOf({
    required this.listResult,
  });
}

class ResultModel {}

class ExceptionModel extends ResultModel {
  String message;
  ExceptionModel({
    required this.message,
  });
}
