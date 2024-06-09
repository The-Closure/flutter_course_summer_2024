import 'package:flutter/material.dart';
import 'package:token_statefulwidget/models/login_model.dart';
import 'package:token_statefulwidget/models/user_info_model.dart';
import 'package:token_statefulwidget/pages/user_info_page.dart';
import 'package:token_statefulwidget/service/login_service.dart';

String? token;

TextEditingController userName = TextEditingController();
TextEditingController password = TextEditingController();

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: userName,
          ),
          TextField(
            controller: password,
          ),
          InkWell(
            onTap: () async {
              var temp = await login(
                LoginModel(
                  username: userName.text,
                  password: password.text,
                ),
              );
              print(temp);
              if (temp is String) {
                token = temp;
                print('login success');
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UserInfoPage(),
                  ),
                );
              } else {
                print('login faild');
              }
            },
            child: Container(
              width: 200,
              height: 50,
              color: Colors.red,
              child: const Center(child: Text("Login")),
            ),
          ),
          InkWell(
            onTap: () async {
              var userInfo = await getUserInfo();
              print(userInfo.username);
            },
            child: Container(
              width: 200,
              height: 50,
              color: Colors.green,
              child: const Center(
                child: Text(
                  "print user info",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
