import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResponsiveWidgetsPage extends StatelessWidget {
  const ResponsiveWidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.amber,
              width: 200,
              height: double.infinity,
              child: FractionallySizedBox(
                alignment: Alignment.topLeft,
                widthFactor: 0.5,
                heightFactor: 0.8,
                child: Container(
                  color: Colors.teal,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.red,
              width: 200,
              child: const FittedBox(
                alignment: Alignment.center,
                child: Text(
                  'Hello',
                ),
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              width: 200,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              height: double.infinity,
              color: Colors.blueGrey,
              width: 500,
              child: Center(
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
