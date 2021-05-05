import 'package:flutter/material.dart';

import '../../size_config.dart';
import './components/body.dart';

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
    );
  }
}
