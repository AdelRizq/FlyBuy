import 'package:flutter/material.dart';

import './components/body.dart';
import '../../models/Cart.dart';
import './components/custom_bottom_navigation_bar.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Body(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
