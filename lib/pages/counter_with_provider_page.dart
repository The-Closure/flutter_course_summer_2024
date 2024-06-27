import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:value_notifier_provider_theme/providers/counter_provider.dart';

class CounterPageWithProvider extends StatelessWidget {
  const CounterPageWithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Exapmle'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // context.read<CounterProvider>().increament();
              Provider.of<CounterProvider>(context, listen: false).increament();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  elevation: 10,
                  backgroundColor: Colors.green,
                  duration: Duration(seconds: 1),
                  content: Text('counter is incremeneted'),
                ),
              );
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().decreament();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  elevation: 10,
                  backgroundColor: Colors.red,
                  duration: Duration(seconds: 1),
                  content: Text('counter is deceamenetd'),
                ),
              );
            },
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().decreament();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  elevation: 10,
                  backgroundColor: Colors.green,
                  duration: Duration(seconds: 1),
                  content: Text('counter is 0'),
                ),
              );
            },
            child: const Icon(Icons.info),
          ),
        ],
      ),
      body: Center(
        child: Text(
          context.watch<CounterProvider>().counter.toString(),
          style: const TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
