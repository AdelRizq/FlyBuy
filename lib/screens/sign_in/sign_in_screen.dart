import 'package:flutter/material.dart';

import './components/body.dart';

class SignInScreen extends StatelessWidget {
  static const String routeName = '/sign_in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign in"),
      ),
      body: Body(),
    );
  }
}
