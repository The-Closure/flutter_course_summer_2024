import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          centerTitle: true,
          title: const Text("Flutter App"),
          leading: const FlutterLogo(),
          actions: const [
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
          ],
        ),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.orange,
            child: const Center(
              child: Text("Hello"),
            ),
          ),
        ),
      ),
    );
  }
}
