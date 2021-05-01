import 'package:flutter/material.dart';
import './components/body.dart';
import '../../size_config.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash-screen";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
