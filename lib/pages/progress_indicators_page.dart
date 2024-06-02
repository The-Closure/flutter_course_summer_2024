import 'package:flutter/material.dart';

class ProgressIndicatorsPage extends StatelessWidget {
  const ProgressIndicatorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CircularProgressIndicator(
            // value: 0.5,
            backgroundColor: Colors.yellow,
            color: Colors.pink,
          ),
          LinearProgressIndicator(
            minHeight: 100,
            backgroundColor: Colors.pink.withOpacity(0.2),
            color: Colors.pink,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            // value: 0.5,
          ),
        ],
      ),
    );
  }
}
