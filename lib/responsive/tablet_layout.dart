import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/widgets/app_drawer.dart';
import 'package:responsive_and_adaptive/widgets/custom_grid_view.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.of(context).size.width < 1100
          ? AppBar(
              title: const Text('Tablet Layout'),
            )
          : null,
      drawer:
          MediaQuery.of(context).size.width < 1100 ? const AppDrawer() : null,
      body: Column(
        children: [
          AspectRatio(
              aspectRatio: 4 / 1,
              child: CustomGridView(
                  gridViewItem: Container(
                    color: Colors.grey.shade400,
                  ),
                  crossAxisCount: 4)),
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
