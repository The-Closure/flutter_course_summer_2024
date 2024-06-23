import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: Center(
        child: Container(
          // alignment: Alignment.center,
          color: Colors.red,
          width: screenWidth / 2,
          height: screenHeight / 3,
          child: FittedBox(
            child: Text(
              "$screenWidth / $screenHeight / $orientation",
              style: const TextStyle(
                fontSize: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
