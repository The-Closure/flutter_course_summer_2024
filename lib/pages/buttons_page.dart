import 'package:flutter/material.dart';
import 'package:token_statefulwidget/pages/home_page.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              surfaceTintColor: Colors.black,
              padding: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              elevation: 10,
              minimumSize: const Size(200, 50),
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              print('Eleveted Button');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const HomePage();
                  },
                ),
              );
            },
            child: const Text(
              "Eleveted Button",
            ),
          ),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: () {
              print('filled button');
            },
            child: const Text(
              "Filled Button",
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {
              print('Outline Button');
            },
            child: const Text(
              "OutLine Button",
            ),
          ),
          const SizedBox(height: 20),
          IconButton(
            onPressed: () {
              print('Icon Button');
            },
            icon: const Icon(
              Icons.add,
            ),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              print('Text Button');
            },
            child: const Text(
              'Text Button',
            ),
          ),
          const SizedBox(height: 20),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              print('FAB');
            },
          ),
          const SizedBox(height: 20),
          FloatingActionButton.extended(
            onPressed: () {
              print('Extended FAB');
            },
            label: const Text("Extended FAB"),
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
