import 'package:flutter/material.dart';

import '../widgets/my_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 325,
        ),
        // gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        //   maxCrossAxisExtent: 400,
        // ),
        children: const [
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
          MyCard(),
        ],
      ),
    );
  }
}
