import 'package:flutter/material.dart';

ValueNotifier<int> counter = ValueNotifier<int>(0);

class CounterPageWithValueNotifier extends StatelessWidget {
  const CounterPageWithValueNotifier({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter.value++;
              print(counter.value);
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              if (counter.value > 0) {
                counter.value--;
              }
              print(counter.value);
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      body: Center(
        child: ValueListenableBuilder(
          builder: (context, value, _) {
            return Text(
              value.toString(),
              style: const TextStyle(fontSize: 50),
            );
          },
          valueListenable: counter,
        ),
      ),
    );
  }
}
