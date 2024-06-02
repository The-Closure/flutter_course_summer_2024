// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 30,
              // right: 50,
              // left: 50,
              // bottom: 50,
              width: 400,
              height: 400,
              child: Container(
                width: 300,
                height: 300,
                color: Colors.red,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            Positioned(
              bottom: 20,
              child: InkWell(
                onTap: () {
                  print("object");
                },
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ),
            ),
            Container(
              width: 500,
              height: 500,
              child: const Text("Container"),
            ),
          ],
        ),
      ),
    );
  }
}
