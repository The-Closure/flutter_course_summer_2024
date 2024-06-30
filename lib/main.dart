import 'package:bottom_navigation_bar_tab_bar/pages/cart_page.dart';
import 'package:bottom_navigation_bar_tab_bar/pages/favorite_page.dart';
import 'package:bottom_navigation_bar_tab_bar/pages/history_page.dart';
import 'package:bottom_navigation_bar_tab_bar/pages/home_page.dart';
import 'package:bottom_navigation_bar_tab_bar/pages/map_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavigationBarPage(),
    );
  }
}

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  int selectedIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const MapPage(),
    const CartPage(),
    const HistoryPage(),
    const FavoritePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        overlayColor: MaterialStateProperty.all<Color>(Colors.blue),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        shadowColor: Colors.red,
        indicatorColor: Colors.pink,
        indicatorShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              5,
            ),
          ),
        ),
        surfaceTintColor: Colors.blue,
        elevation: 5,
        backgroundColor: Colors.yellow,
        animationDuration: const Duration(
          seconds: 5,
        ),
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
          print(index);
        },
        selectedIndex: selectedIndex,
        destinations: const [
          NavigationDestination(
            tooltip: 'Home Page',
            enabled: false,
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.explore),
            icon: Icon(Icons.explore_outlined),
            label: "Map",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.shopping_cart),
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          NavigationDestination(
            icon: Icon(Icons.history_outlined),
            selectedIcon: Icon(Icons.history),
            label: "History",
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_outline),
            selectedIcon: Icon(Icons.favorite),
            label: "Favorite",
          ),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}
