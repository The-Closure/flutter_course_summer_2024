class ResultModel {}

class ErrorModel extends FailureModel {
  ErrorModel({required super.message});
}

class ExceptionModel extends FailureModel {
  ExceptionModel({required super.message});
}

class FailureModel extends ResultModel {
  final String message;

  FailureModel({required this.message});
}

class ListOf<T> extends ResultModel {
  final List<T> data;

  ListOf({required this.data});
}
