import 'package:card_gird_view/widgets/my_card.dart';
import 'package:flutter/material.dart';

class SecondHomePage extends StatelessWidget {
  const SecondHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.builder(
          padding: const EdgeInsets.all(10),
          // physics: const BouncingScrollPhysics(),
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 325,
          ),
          itemBuilder: (context, index) {
            return const MyCard();
          },
        ),
      ),
    );
  }
}
