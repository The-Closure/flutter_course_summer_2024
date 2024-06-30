import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cart Page'),
          bottom: const TabBar(
            indicatorPadding: EdgeInsets.all(2),
            indicatorWeight: 2,
            // indicator: BoxDecoration(),
            automaticIndicatorColorAdjustment: false,
            indicatorSize: TabBarIndicatorSize.tab,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            dividerColor: Colors.orange,
            dividerHeight: 10,
            tabs: [
              Tab(
                text: 'My Cart',
                icon: Icon(Icons.shopping_cart_checkout),
                // child: const Text('data'),
              ),
              Tab(
                text: 'Wishlist',
                icon: Icon(Icons.grade),
              ),
              Tab(
                text: 'Promo Code',
                icon: Icon(Icons.abc),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.red,
              child: const Center(
                child: Text('My Cart'),
              ),
            ),
            Container(
              color: Colors.green,
              child: const Center(
                child: Text('Wishlist'),
              ),
            ),
            Container(
              color: Colors.blue,
              child: const Center(
                child: Text('Promo Code'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
