import 'package:flutter/material.dart';

import './components/body.dart';
import '../../components/custom_bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavigationBar(selectedMenu: Menu.home),
    );
  }
}
