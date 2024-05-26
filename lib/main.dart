import 'package:flutter/material.dart';
import 'package:list_tile_list_view_builder_text_field/pages/second_page.dart';
import 'package:list_tile_list_view_builder_text_field/pages/third_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
