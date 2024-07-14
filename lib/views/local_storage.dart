import 'package:firebase_session_one/config/get_it.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// class A {
//   final B b;
//   A(this.b);
// }

// class B {
//   B();
// }

// void temp() {
//   B b = B();
//   A(b);
// }

class LocalStoragePage extends StatelessWidget {
  const LocalStoragePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                // SharedPreferences storage =
                //     await SharedPreferences.getInstance();
                // bool status =
                //     await storage.setString('name', 'sdfjsjdkfhjsdfh');
                // print(status);
                getIt.get<SharedPreferences>().setString('name', 'tareq');
              },
              child: const Text(
                'set data',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                // SharedPreferences storage =
                //     await SharedPreferences.getInstance();
                // String? name = storage.getString('name');
                // print(name);

                String? name = getIt.get<SharedPreferences>().getString('name');
                print(name);
              },
              child: const Text(
                'get data',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
