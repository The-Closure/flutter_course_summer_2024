import 'package:dio/dio.dart';
import 'package:firebase_session_one/config/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Service {
  Future login(UserInfoModel userInfoModel) async {
    Response response =
        await getIt.get<Dio>().post('https://dummyjson.com/auth/login');
    if (response.statusCode == 200) {
      getIt.get<SharedPreferences>().setString('token', response.data['token']);
    }
  }

  Future getProfileDetails() async {
    Response response = await getIt.get<Dio>().get(
          'https://dummyjson.com/auth/me',
          options: Options(headers: {
            'Authorization': 'Bearer ${getIt.get<SharedPreferences>().getString(
                  'token',
                )}'
          }),
        );
    if (response.statusCode == 200) {}
  }
}

class UserInfoModel {}
