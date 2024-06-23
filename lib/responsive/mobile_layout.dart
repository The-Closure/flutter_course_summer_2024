import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/widgets/app_drawer.dart';
import 'package:responsive_and_adaptive/widgets/custom_grid_view.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile Layout'),
      ),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: CustomGridView(
              gridViewItem: Container(
                color: Colors.grey.shade400,
              ),
              crossAxisCount: 2,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  color: Colors.grey.shade400,
                  height: 50,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
