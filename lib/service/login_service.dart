import 'package:dio/dio.dart';
import 'package:token_statefulwidget/models/login_model.dart';
import 'package:token_statefulwidget/models/user_info_model.dart';
import 'package:token_statefulwidget/pages/login_page.dart';

Future login(LoginModel loginModel) async {
  Dio dio = Dio();
  try {
    Response response = await dio.post(
      'https://dummyjson.com/auth/login',
      data: loginModel.toMap(),
    );
    if (response.statusCode == 200) {
      return response.data['token'];
    } else {
      return false;
    }
  } catch (e) {
    print(e);
    return false;
  }
}

Future<UserInfoModel> getUserInfo() async {
  Dio dio = Dio();
  try {
    Response response = await dio.get(
      'https://dummyjson.com/auth/me',
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',
        },
      ),
    );
    if (response.statusCode == 200) {
      UserInfoModel userInfo = UserInfoModel.fromMap(response.data);
      return userInfo;
    } else {
      print('Error');
      return UserInfoModel(id: 10, username: 'username', email: 'email');
    }
  } catch (e) {
    print('Exception');
    print(e);
    return UserInfoModel(id: 50, username: 'username', email: 'email');
  }
}
