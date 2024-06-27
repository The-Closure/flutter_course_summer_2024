import 'package:flutter/material.dart';

class CounterPageWithStateFul extends StatefulWidget {
  const CounterPageWithStateFul({super.key});

  @override
  State<CounterPageWithStateFul> createState() =>
      _CounterPageWithStateFulState();
}

class _CounterPageWithStateFulState extends State<CounterPageWithStateFul> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter++;
              setState(() {});
              print(counter);
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              // counter--;
              // if (counter < 0) {
              //   counter = 0;
              // }
              // setState(() {});
              if (counter > 0) {
                counter--;
                setState(() {});
              }
              print(counter);
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      body: Center(
        child: Text(
          '$counter',
          style: const TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
