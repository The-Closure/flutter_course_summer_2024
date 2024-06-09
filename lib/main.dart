import 'package:flutter/material.dart';
import 'package:token_statefulwidget/pages/buttons_page.dart';
import 'package:token_statefulwidget/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}
