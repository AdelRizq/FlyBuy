import 'package:flutter/material.dart';

import '../../size_config.dart';
import './components/body.dart';
import '../../components/custom_bottom_navigation_bar.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar:
          CustomBottomNavigationBar(selectedMenu: Menu.profile),
    );
  }
}
